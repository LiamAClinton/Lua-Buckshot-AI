--[[
Created By: Liam Clinton
Description:
A file to handle any info related to handling game data
]]

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