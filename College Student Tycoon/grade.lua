local timeSystem = require "timeSystem"
local stats = require "stats"

local grade = { }
grade.endGrade = " "

function grade.aGrade()
	if ((timeSystem.day >= 1) and ((stats.intel)>= 90))
		then grade.endGrade = "A"
	end
	return grade.endGrade
end

function grade.bGrade()
	if ((timeSystem.day >= 1) and (90 >(stats.intel)>= 70))
		then grade.endGrade = "B"
	end
	return grade.endGrade
end

function grade.cGrade()
	if ((timeSystem.day >= 1) and (70 >(stats.intel)>= 50))
		then grade.endGrade = "C"
	end
	return grade.endGrade
end

function grade.dGrade()
	if ((timeSystem.day >= 1) and (50 >(stats.intel)>= 30))
		then grade.endGrade = "D"
	end
	return grade.endGrade
end

function grade.failGrade()
	if ((timeSystem.day >= 1) and ((stats.intel)< 30))
		then grade.endGrade = "FAIL"
	end
	return grade.endGrade
end

function grade.display()
	grade.gradeText = display.newText(grade.endGrade, 960, 770 , native.systemFont , 40 )
	grade.gradeText:setFillColor( 1, 0, 0 )
end

return grade