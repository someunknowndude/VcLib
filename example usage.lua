local vclib = loadstring(game:HttpGet("https://raw.githubusercontent.com/someunknowndude/VcLib/main/lib.lua"))()

-- lib:getSpeakers() [nil] - Returns table of all players that have VoiceChat
-- lib:isSpeaker(Player) [Instance] - Returns boolean on if specified player has VoiceChat

print("----------\nPlayers with voicechat:")
for i,v in pairs(vclib:getSpeakers()) do
   print(v.Name)
end
print("----------")

print("LocalPlayer has voicechat:")
print(vclib:isSpeaker(game.Players.LocalPlayer))
print("----------")
