local Loader = {}

Loader.path_substitutions = {}

JSON = (loadfile "lib/JSON.lua")() -- one-time load of the routines

--- Loads Factorio data files from a list of mods.
-- executes all module loaders (data.lua),
-- they do some stuff and extend the global variable "data",
-- after calling this function, the function replace_path can be used.
-- @params table paths - list of mods that are loaded.
--    - First one has to be "core"!
function Loader.load_data(paths)

    -- check if first path is core
    assert(Loader.basename(paths[1]) == 'core')

    -- loop over all paths
    for i = 1, #paths do

        if i == 1 then
            package.path = paths[i] .. "/lualib/?.lua;" .. package.path
            require("dataloader")
        end

        local old_path = package.path
        package.path = paths[i] .. "/?.lua;" .. package.path

        dofile(paths[i] .. "/data.lua")

        extended_path = "./" .. paths[i]

        -- add the module info
        Loader.addModuleInfo(paths[i])

        -- re-repalace the substututes paths
        Loader.path_substitutions["__" .. extended_path:gsub("^.*/([^/]+)/?$", "%1") .. "__"] = paths[i]

        package.path = old_path
    end
end


--- Replace __mod__ references in path.
-- Uses the global variable path_substitutions
function Loader.expand_path(path)
    return path:gsub("__[a-zA-Z0-9-_]*__", Loader.path_substitutions)
end


--- add the info.json as to the data-struct, if available
-- converts the json into lua-data
function Loader.addModuleInfo(path)

    if not data.module_info then
        data.module_info = {}
    end
    data.module_info[Loader.basename(path)] = JSON:decode(Loader.loadModuleInfo(path))
end

--- read the contents of the module info.json
-- returns in every case a valid json
function Loader.loadModuleInfo(path)
    local infopath = path .. "/info.json"
    if not Loader.fileExists(infopath) then
        return '{}'
    end
    assert(io.input(path .. "/info.json"))
    file_content = io.read("*all")
    if file_content then
        return file_content
    end
    return '{}'
end

--- simple check if a file exists
-- @params string path
function Loader.fileExists(path)
    local f=io.open(path, "r")
    if f~=nil then io.close(f) return true else return false end
end

--- basename of path
-- returns the name of the upper directory from path
-- @params string path
-- @return string - the basename
function Loader.basename(path)
    local name = string.gsub(path, "(.*/)(.*)", "%2")
    return name
end

return Loader
