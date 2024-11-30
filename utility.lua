--[[
Created By: Liam Clinton
Description:
A file for custom utility functions
]]

-- helper function to make handling input that needs validation easier
-- returns the user's inputted value, validated through the arg list
function GetInput(validInputs)
    -- "validInputs" is a table of legal inputs for the user to give
    local success = false -- flag for when we have valid input
    local inp = nil -- storing the user's input

    while success ~= true do
        inp = io.read()
        -- seeing if what the user entered was a valid piece of input
        for _,v in ipairs(validInputs) do
            if tonumber(inp) == v then
                success = true
                break
            end
        end
        if success ~= true then
            local errString = "invalid input. please give one of the valid inputs:"
            for _,v in ipairs(validInputs) do
                errString = errString .. " " .. v
            end
            errString = errString .. " >> "
        end
    end

    return inp
end
