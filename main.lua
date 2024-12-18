local Players = game:GetService("Players")
local player = Players.LocalPlayer

local validKeys = loadstring(game:HttpGet("https://pastebin.com/9NxjpPii"))()

local function checkKey(key)
    for _, validKey in ipairs(validKeys) do
        if key == validKey then
            return true
        end
    end
    return false
end

script_key = ""  
if checkKey(script_key) then
    print("Key Authorized")
else
    player:Kick("키가 올바르지 않아요. 디스코드로 문의해주세요.")
end
