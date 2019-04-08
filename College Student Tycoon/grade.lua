
local stats = require "stats"

local grade = { }

function grade.displayGrade()
	if (stats.intel>= 90) then
		grade.gradeText = display.newText("Grade = A", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (stats.intel >= 70 and stats.intel < 90) then
		grade.gradeText = display.newText("Grade = B", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (stats.intel >= 50 and stats.intel < 70) then
		grade.gradeText = display.newText("Grade = C", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (stats.intel >= 30 and stats.intel < 50) then
		grade.gradeText = display.newText("Grade = D", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (stats.intel < 30) then
		grade.gradeText = display.newText("Grade = FAIL", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	end
end

return grade
