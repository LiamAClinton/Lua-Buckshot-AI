--[[
Created By: Liam Clinton
Description:
A file to handle any info related to handling game data
]]

require("utility.lua")

-- setting up a new game
function SetupGame()
    -- getting initial parameters
    local liveShells, blankShells, mBolts, opponentCount

    io.write("How many live (Red/White) shells? [0 to 10] >> ")
    liveShells = GetInput(0,1,2,3,4,5,6,7,8,9,10)

    io.write("How many blank (Grey/Black) shells? [0 to 10] >> ")
    blankShells = GetInput(0,1,2,3,4,5,6,7,8,9,10)

    io.write("How many bolts (Lives) are you starting with? [1 to 6] >> ")
    mBolts = GetInput(1,2,3,4,5,6) -- maximum health for the round

    io.write("How many opponents? [1 to 3] >> ")
    opponentCount = GetInput(1,2,3)

    Game = {
        liveLeft = liveShells,
        blankLeft = blankShells,
        totalLeft = function() return Game.liveLeft + Game.blankLeft end, -- avoids getting/setting an inaccurate value
        maxBolts = mBolts,
        players = {} -- will fill later
    }

    -- creating the amount of players that we need
end