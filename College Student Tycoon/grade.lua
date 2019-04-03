local grade = { }
local timeSystem = require "timeSystem"
local stats = require "stats"

local endGrade = ""

local function aGrade()
	if ((timeSystem.day == 20) and ((stats.sleep and stats.hunger and stats.hygiene and stats.happiness and stats.intel)>= 90))
		then endGrade = "A"
end

local function bGrade()
	if ((timeSystem.day == 20) and (90 >(stats.sleep and stats.hunger and stats.hygiene and stats.happiness and stats.intel)>= 70))
		then endGrade = "B"
end

local function cGrade()
	if ((timeSystem.day == 20) and (70 >(stats.sleep and stats.hunger and stats.hygiene and stats.happiness and stats.intel)>= 50))
		then endGrade = "C"
end

local function dGrade()
	if ((timeSystem.day == 20) and (50 >(stats.sleep and stats.hunger and stats.hygiene and stats.happiness and stats.intel)>= 30))
		then endGrade = "D"
end

local function failGrade()
	if ((timeSystem.day == 20) and ((stats.sleep and stats.hunger and stats.hygiene and stats.happiness and stats.intel)< 30))
		then endGrade = "FAIL"
end