--[[
Created By: Liam Clinton
Description:
A file to handle any info related to handling game data
]]

require("Lua.BuckshotAI.utility") -- equivalent to folder1/folder2/fileName

-- setting up a new game
function SetupGame()
    -- setting up the table here so when put inputted data directly into it

    Game = {
        liveLeft = nil, -- gets defined later
        blankLeft = nil, -- gets defined later
        totalLeft = function() return Game.liveLeft + Game.blankLeft end, -- avoids getting/setting an inaccurate value
        maxBolts = nil, -- gets defined later
        playerCount = nil, -- gets defined later
        players = {} -- filling outside this via a loop
    }

    io.write("How many opponents? [1 to 3] >> ")
    Game.playerCount = GetInput(1,2,3) + 1; -- the +1 is accounting for the AI (AKA this program)

    -- player definition loop goes here
    -- adding the players to account for (AI + opponentCount)
    
    io.write("How many bolts (Lives) are you starting with? [1 to 6] >> ")
    Game.maxBolts = GetInput(1,2,3,4,5,6) -- maximum health for the round
    
    io.write("How many live (Red/White) shells? [0 to 10] >> ")
    Game.liveLeft = GetInput(0,1,2,3,4,5,6,7,8,9,10)

    io.write("How many blank (Grey/Black) shells? [0 to 10] >> ")
    Game.blankLeft = GetInput(0,1,2,3,4,5,6,7,8,9,10)
end
