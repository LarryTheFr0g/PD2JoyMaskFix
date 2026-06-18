Hooks:PostHook(BlackMarketTweakData, "init", "joy_custom_mask_config_manager", function(self)
    if not self.masks then return end


    -- mask_id = Vector3(X, Y, Z), use maskstweakdata.lua for reference
    local joy_mask_tweaks = {
        troll        = Vector3(0, 0.6, -0.2),
       -- thespian     = Vector3(0, 0.6, -0.2), --TESTING ONLY TESTING ONLY REMOVE BEFORE SENDING INTO THE WORLD, WILL MESS UP THE THESPIAN FROM CEM SET!!!!!!
        oni 		 = Vector3(0, 0.65, 0.31),
        dallas_clean = Vector3(0, 0, 0.554498), -- dallas OG mask has the offsets, we use those since this mask is shaped the same
		cloth_commander = Vector3(0, 0, 0.554498),
		skull = Vector3(0, 0, 0.554498),
    }


    for mask_id, position_vector in pairs(joy_mask_tweaks) do
        if self.masks[mask_id] then
		
            self.masks[mask_id].offsets = self.masks[mask_id].offsets or {}
            
            self.masks[mask_id].offsets.joy = { -- adding rotation to follow maskstweakdata.lua formatting, just in case.
                position_vector,
                Rotation(-0, -0, -0)
            }
        end
    end
end)