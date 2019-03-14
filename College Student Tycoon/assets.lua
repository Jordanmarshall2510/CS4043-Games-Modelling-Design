-- Assets --
local assets = { }

function assets.display()

assets.library = display.newImageRect("library.png", 74, 87)
assets.library.x = -220
assets.library.y = 412

assets.foundationBuilding = display.newImageRect("foundationBuilding.png", 74, 87)
assets.foundationBuilding.x = -200
assets.foundationBuilding.y = 450

assets.house = display.newImageRect("house.png", 74, 87)
assets.house.x = -300
assets.house.y = 450

assets.MedicalSchool = display.newImageRect("MedicalSchool.png", 74, 87)
assets.MedicalSchool.x = -300
assets.MedicalSchool.y = 450

assets.SU = display.newImageRect("SU.png", 74, 87)
assets.SU.x = -300
assets.SU.y = -450

end

return assets