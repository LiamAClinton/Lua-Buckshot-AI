--[[
Created By: Liam Clinton
Description:
A file for custom utility functions
]]

-- helper function to make handling input that needs validation easier
-- returns the user's inputted value, validated through the arg list
function GetInput(...)
    -- "args" is a table of legal inputs for the user to give
    local success = false -- flag for when we have valid input
    local i = nil -- storing the user's input

    while success ~= true do
        i = io.read()
        -- seeing if what the user entered was a valid piece of input
        for option in arg do
            if i == option then success = true end
        end
        if success ~= true then print("invalid input") end
    end

    return i
end