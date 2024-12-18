local Players = game:GetService("Players")
local player = Players.LocalPlayer
local validKeys = {
  "key1",
  "key2", 
  "key3"
}
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
  player:Kick("구매는 c7v2c로 친추주세요")
end
