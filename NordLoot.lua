NordLoot = LibStub("AceAddon-3.0"):NewAddon("NordLoot", "AceConsole-3.0", "AceEvent-3.0")

function NordLoot:OnInitialize()
    NordLoot:Print("Welcome to NordLoot")
end

NordLoot:RegisterEvent("LOOT_OPENED", function(text)
    for i = 1, GetNumLootItems() do
        if GetLootSlotType(i) == 1 then
            local link = GetLootSlotLink(i)
            if IsInRaid() then
                if link then
                    local item = tonumber(link:match("item:(%d+)"));
                    if item then
                        itemName, itemLink, itemRarity = GetItemInfo(link)

                        if itemRarity >= 3 then
                            SendChatMessage(link, "RAID_WARNING", "COMMON")
                        end
                    end
                end
            else
                NordLoot:Print("You are not in a raid")
            end
        end
    end
end)
