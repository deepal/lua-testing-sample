---@diagnostic disable: undefined-global

describe("my module", function ()
    describe("sum() function", function ()
        it("should return the sum of two numbers", function ()
            local mymodule = require "lib.mymodule"
            local result = mymodule.sum(100, 200)
            assert.are.same(300, result)
        end)
    end)
end)