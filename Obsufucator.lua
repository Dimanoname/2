local thing = [[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/Useless%20Gui.lua"))()
]]


local encoded = thing:gsub(".", function(bb) return "\\" .. bb:byte() end) or thing .. "\""

print("loadstring('" .. encoded .. "')()")