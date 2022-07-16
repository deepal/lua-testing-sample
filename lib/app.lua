local check_env = require "lib.check_env"
local sum = require "lib.sum"

local app = {}

app.run = function ()
    if check_env() == true then
        return string.format("Result of 10 + 20 is %s", sum(10, 20))
    else 
        return nil
    end
end

return app