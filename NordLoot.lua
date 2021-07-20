NordLoot = LibStub("AceAddon-3.0"):NewAddon("NordLoot", "AceConsole-3.0", "AceEvent-3.0")

function NordLoot:OnInitialize()
    NordLoot:Print("Welcome to NordLoot")
end

NordLoot:RegisterEvent("LOOT_OPENED", function(text)
    NordLoot:Print("Loot Opened")
end);

NordLoot:RegisterEvent("LOOT_CLOSED", function(text)
    NordLoot:Print("Loot Closed")
end);
