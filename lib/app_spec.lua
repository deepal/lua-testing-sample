---@diagnostic disable: undefined-global

describe("app module", function ()
    describe("run() function", function ()
        local check_env_stub = stub()

        setup(function ()
            package.preload["lib.check_env"] = function ()
                return check_env_stub
            end
        end)
    
        teardown(function ()
            package.preload["lib.check_env"] = nil
        end)

        after_each(function ()
            check_env_stub:revert()
        end)

        it("should return a string if all criteria are met", function ()
            local app = require("lib.app")
            check_env_stub.returns(true)
            assert.same("Result of 10 + 20 is 30", app.run())
        end)

        it("should return nil if all criteria are not met", function ()
            local app = require("lib.app")
            check_env_stub.returns(false)
            assert.is_nil(app.run())
        end)
    end)
end)