local stats = require "stats"

local grade = { }

function grade.displayGrade()
	local gradeCalculation = (stats.sleep + stats.intel + stats.happiness)/3 

	if (gradeCalculation > 90) then
		grade.gradeText = display.newText("Grade = A", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (gradeCalculation >= 70 and stats.intel < 90) then
		grade.gradeText = display.newText("Grade = B", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (gradeCalculation >= 50 and stats.intel < 70) then
		grade.gradeText = display.newText("Grade = C", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (gradeCalculation >= 30 and stats.intel < 50) then
		grade.gradeText = display.newText("Grade = D", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	
	elseif (gradeCalculation < 30) then
		grade.gradeText = display.newText("Grade = FAIL", 960, 650, "Ariel Black", 50)
		grade.gradeText:setFillColor(1, 0, 0)
	end
end

return grade
