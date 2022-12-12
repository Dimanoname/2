local thing = [[
https://raw.githubusercontent.com/Dimanoname/2/main/Useless%20Gui.lua
]]


local encoded = thing:gsub(".", function(bb) return "\\" .. bb:byte() end) or thing .. "\""

print(encoded)
print("Put the above encoded string into the loadstring below between the quotation marks for the obfuscated scrippts.")
print'loadstring("")()'