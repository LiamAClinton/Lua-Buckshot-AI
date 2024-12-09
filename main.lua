--[[
Authored By: Liam Clinton
Description:
This is the starting point / main point of interaction for
this Buckshot Roulette AI
]]

require("Lua.BuckshotAI.game") -- equivalent to folder1/folder2/fileName

function Main()
    local quit = false
    -- main control loop
    while quit ~= true do
        io.write("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n",
                 "Enter the character for the action you wish to perform:\n",
                 "< s > -- Start new game\n",
                 "< q > -- Quit\n",
                 "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n",
                 ">> ")

        -- input from user on menu behaviour
        local i = io.read()

        if i == 'q' or i == 'Q' then
            quit = true
        elseif i == 's' or i == 'S' then
            SetupGame()
        else
            io.write("Undefined Operation\n")
        end

    end
end

print() -- spacing to make terminal easier to read
Main()