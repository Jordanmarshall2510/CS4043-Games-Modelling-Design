local grade = { }

function grade.calculate()
	local gradeCalculation = (endHunger + endSleep + endHygiene + endHappiness + endInt) / 5
	if (gradeCalculation > 90) then
		result = "A"
		
	elseif (gradeCalculation >= 70) then
		result = "B"
	
	elseif (gradeCalculation >= 50) then
		result = "C"
	
	elseif (gradeCalculation >= 30) then
		result = "D"
	
	elseif (gradeCalculation < 30) then
		result = "FAIL" 
	end
	return result 
end 

return grade
