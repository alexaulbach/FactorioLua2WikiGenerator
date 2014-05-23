#!/opt/local/bin/lua

-- call
-- ./luaprtotype2json.lua factorio/Contents/data/core factorio/Contents/data/base
--
-- core needs to be first module!
--

require("io")
inspect = require('lib/inspect')
JSON = (loadfile "lib/JSON.lua")() -- one-time load of the routines

local options = {
    paths = {}
}

--- read paths and other arguments ("name=value" - style)
function parseArgs()
    local a
    local m, n
    for i = 1, #arg do
        a = arg[i]
        m, n = a:match('(%a+)=(%a+)')
        if m then
            if n == 'true' then
                n = true
            elseif n == 'false' then
                n = false
            end
            options[m] = n
        else
            options.paths[#options.paths + 1] = a
        end
    end
end


parseArgs()

-- set "data"
Loader = require("loader")
Loader.load_data(options.paths)


local output = {
    module_info = data.module_info,
    data_raw = data.raw
}

--print(inspect(data))
print(JSON:encode_pretty(output))
