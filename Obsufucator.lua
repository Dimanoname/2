local thing = [[

]]


local encoded = thing:gsub(".", function(bb) return "\\" .. bb:byte() end) or thing .. "\""

print("loadstring('" .. encoded .. "')()")