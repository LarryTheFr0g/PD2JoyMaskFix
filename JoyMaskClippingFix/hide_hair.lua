Hooks:PostHook(BlackMarketTweakData, "init", "joy_custom_mask_config_manager", function(self)
    if not self.masks then return end


    -- mask_id = Vector3(X, Y, Z), use maskstweakdata.lua for reference
    local joy_mask_tweaks = {
        troll        	= Vector3(0, 0.6, -0.2), 	--The Troll
		thespian     	= Vector3(0, 0.6, -0.2), --TESTING ONLY TESTING ONLY REMOVE BEFORE SENDING INTO THE WORLD, WILL MESS UP THE THESPIAN FROM CEM SET!!!!!!
        oni 		 	= Vector3(0, 0.65, 0.31),	--Oni
        dallas_clean 	= Vector3(0, 0, 0.554498),	--Dallas Begins
		cloth_commander = Vector3(0, 0, 0.554498), 	--Commander Crime
		skull 			= Vector3(0, 0, 0.554498), 	--The Skull
		outlandish_a    = Vector3(0, 0, 0.32),      --The Cannula MASK STRAP ISSUE
		outlandish_c	= Vector3(0, 0, 0.554498),	--The Perfect Stranger
		alex 			= Vector3(0, 0, 0.554498),
		richard_begins  = Vector3(0, 0, 0.554498),
		richard_returns = Vector3(0, 0, 0.554498),
		wolf			= Vector3(0, 0, 0.56),
		mr_sinister     = Vector3(0, 0, 0.554498), 	--Blackhearted
		demonictender	= Vector3(0, 0.65, 0.05), 	--Kenneth
		bullet			= Vector3(0, 0, 0.3), 		--The Bullet
		clowncry        = Vector3(0, 0, 0.65),      --The Crybaby
		hog        		= Vector3(0, 0, 0.65),      --The Hog
		demon        	= Vector3(0, 0, 0.65),      --The Horned Beast
		stonekisses  	= Vector3(0, 0, 0.45),      --The Pout
		shrunken  		= Vector3(0, 0, 0.45),      --The Shrunken Head MASK STRAP ISSUE
		vampire  		= Vector3(0, 0, 0.5),      --The Vampire
		lcv             = Vector3(0, 0, 0.5),      --Le Casle Vania
		win_donald_mega	= Vector3(0, 0, 0.75),     --God Emperor
		win_donald		= Vector3(0, 0, 0.75),     --45th
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