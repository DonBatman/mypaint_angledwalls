
mypaint_angledwalls = {}

local materials = {"acacia_wood","aspen_wood","brick","desert_cobble","desert_stone","junglewood","pine_wood",
					"cobble","gravel","stone","wood","sandstone"
					}
local materials2 = {
					{"stonebrick","stone_brick"},
					{"sandstonebrick","sandstone_brick"},
					{"desert_stonebrick","desert_stone_brick"},
					}

for i,k in pairs(materials) do
	local mat = k

for i,k in ipairs(materials2) do
	local itm = k[1]
	local img = k[2]

mypaint_angledwalls.colors = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"darkgreen", "Dark Green",  "#005b0770"},
	{"darkgrey",  "Dark Grey",   "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}


local paintables = {
	"angledwalls:angled_wall"..mat
}

for _, entry in ipairs(mypaint_angledwalls.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]




minetest.register_node(":angledwalls:angled_wall"..mat.."_" .. color, {
	description = desc .. " Angled Wall "..mat,
	tiles = {"default_"..mat..".png".. paint},
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "angled_wall.obj",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node(":angledwalls:angled_wall"..itm.."_" .. color, {
	description = desc .. " Angled Wall "..itm,
	tiles = {"default_"..img..".png".. paint},
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "angled_wall.obj",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

end
if minetest.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(mypaint_angledwalls.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
end
end
