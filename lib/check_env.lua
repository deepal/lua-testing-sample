return function ()
    if os.getenv("RUN_SUM") == "1" then
        return true
    else
        return false
    end
end