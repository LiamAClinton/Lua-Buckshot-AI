--[[
Authored By: Liam Clinton
Description:
This is the starting point / main point of interaction for
this Buckshot Roulette AI
]]

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
            -- SetupGame()
        else
            io.write("Undefined Operation\n")
        end

    end
end

-- setting up a new game
function SetupGame()
    -- getting initial parameters
    local liveShells, blankShells, maxBolts, opponentCount

    io.write("How many live (Red/White) shells? [0 to 10] >> ")
    liveShells = GetInput(0,1,2,3,4,5,6,7,8,9,10)

    io.write("How many blank (Grey/Black) shells? [0 to 10] >> ")
    blankShells = GetInput(0,1,2,3,4,5,6,7,8,9,10)

    io.write("How many lives (Bolts) do you start with? [1 to 6] >> ")
    maxBolts = GetInput(1,2,3,4,5,6)

    io.write("How many opponents? [1 to 3] >> ")
    opponentCount = GetInput(1,2,3)
end

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

print() -- spacing to make terminal easier to read
Main()