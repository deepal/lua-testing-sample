---@diagnostic disable: undefined-global

describe("sum module", function ()
    it("should return the sum of two numbers", function ()
        local sum = require "lib.sum"
        local result = sum(100, 200)
        assert.are.same(300, result)
    end)
end)