---@diagnostic disable: undefined-global

describe("check_env module", function ()
    describe("isRunSumEnvSet() function", function ()
        local check_env = require "lib.check_env"

        before_each(function()
            stub(os, "getenv")
        end)

        after_each(function ()
            os.getenv:revert()
        end)

        it("should return true if RUN_SUM env variable is set to '1'", function ()
            os.getenv.on_call_with("RUN_SUM").returns("1")
            assert.True(check_env())
        end)

        it("should return false if RUN_SUM env variable is not set", function ()
            os.getenv.on_call_with("RUN_SUM").returns(nil)
            assert.False(check_env())
        end)
    end)
end)