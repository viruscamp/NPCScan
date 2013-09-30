local PathData = select( 2, ... ).PathData;

local PointData = {
	[ 806 ] = { -- The Jade Forest
		[ 69768 ] = { 42801680, 53001960, 52803700 }, -- Zandalari Warscout
		[ 69769 ] = { 52601900 }, -- Zandalari Warbringer
		[ 69841 ] = { 52601900 }, -- Zandalari Warbringer
		[ 69842 ] = { 52601900 }, -- Zandalari Warbringer
	},
	[ 809 ] = { -- Kun-Lai Summit
		[ 69768 ] = { 66606460, 74606780, 68007940 }, -- Zandalari Warscout
		[ 69769 ] = { 75006760 }, -- Zandalari Warbringer
		[ 69841 ] = { 75006760 }, -- Zandalari Warbringer
		[ 69842 ] = { 75006760 }, -- Zandalari Warbringer
	},
	[ 810 ] = { -- Townlong Steppes
		[ 69768 ] = { 49407340, 41807640, 37608640, 43609080, 49008420 }, -- Zandalari Warscout
		[ 69769 ] = { 36608560 }, -- Zandalari Warbringer
		[ 69841 ] = { 36608560 }, -- Zandalari Warbringer
		[ 69842 ] = { 36608560 }, -- Zandalari Warbringer
	},
	[ 811 ] = { -- Vale of Eternal Blossoms
		-- One Many Army
	},	
	[ 857 ] = { -- Krasarang Wilds
		-- I'm In Your Base, Killing Your Dudes
		[ 68317 ] = { 84263132 }, -- Mavis Harms <Champion of the Shadows>
		[ 68318 ] = { 84102710 }, -- Dalan Nightbreaker <Champion of Arms>
		[ 68319 ] = { 87402910 }, -- Disha Fearwarden <Champion of the Light>
		[ 68320 ] = { 13206620 }, -- Ubunti the Shade <Champion of the Shadows>
		[ 68321 ] = { 14805720 }, -- Kar Warmaker <Champion of Arms>
		[ 68322 ] = { 10605700 }, -- Muerta <Champion of the Light>
		
		[ 69768 ] = { 39406360 }, -- Zandalari Warscout
		[ 69769 ] = { 38806760 }, -- Zandalari Warbringer
	},	
	[ 858 ] = { -- Dread Wastes
		[ 69768 ] = { 41205120, 47006080, 58806680 }, -- Zandalari Warscout
		[ 69769 ] = { 47206160 }, -- Zandalari Warbringer
		[ 69841 ] = { 47206160 }, -- Zandalari Warbringer
		[ 69842 ] = { 47206160 }, -- Zandalari Warbringer
	},
	[ 928 ] = { -- Isle of Thunder
		-- Champions of Lei Shen
	},
	[ 951 ] = { -- Timeless Isle
		-- Timeless Champion
	},
};

local mapid, mapdata;
for mapid, mapdata in ipairs(PointData) do
	local org_mapdata = PathData[ mapid ];
	if org_mapdata then
		local npcid, npcdata;
		for npcid, npcdata in ipairs(mapdata) do
			org_mapdata[ npcid ] = npcdata;
		end
	else
		PathData[ mapid ] = mapdata;
	end		
end