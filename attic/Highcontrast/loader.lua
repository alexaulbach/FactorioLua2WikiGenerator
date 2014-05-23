local Loader = {}

Loader.path_substitutions = {}

--- Loads Factorio data files from a list of mods.
-- Paths contain a list of mods that are loaded.
-- First one has to be core.
-- Output is stored in the global variables data.raw, after calling this function,
-- the function replace_path can be used.
function Loader.load_data(paths)
    for i = 1, #paths do
        if i == 1 then
            package.path = paths[i] .. "/lualib/?.lua;" .. package.path
            require("dataloader")
        end

        local old_path = package.path
        package.path = paths[i] .. "/?.lua;" .. package.path

        dofile(paths[i] .. "/data.lua")

        extended_path = "./" .. paths[i]

        Loader.path_substitutions["__" .. extended_path:gsub("^.*/([^/]+)/?$", "%1") .. "__"] = paths[i]

        package.path = old_path
    end
end

--- Replace __mod__ references in path.
-- Uses the global variable path_substitutions
function Loader.expand_path(path)
    return path:gsub("__[a-zA-Z0-9-_]*__", Loader.path_substitutions)
end

return Loader
