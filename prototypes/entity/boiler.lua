-- boiler                                   mk1         mk2         mk3
-- max_health                               200         400         600
-- energy_consumption                       1.8MW       3.6MW       7.2MW
-- energy_source.emissions_per_minute       30          25          20
--
-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["boiler"]["boiler"].fast_replaceable_group then
    data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"
end
data.raw["boiler"]["boiler"].next_upgrade = "boiler-mk2"

local mk2 = table.deepcopy(data.raw["boiler"]["boiler"])
mk2.name = "boiler-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.icon_size = 32
mk2.icon_mipmaps = nil
mk2.minable.result = mk2.name
mk2.max_health = 400
mk2.energy_consumption = "3.6MW"
mk2.energy_source.emissions_per_minute = 25
mk2.next_upgrade = "boiler-mk3"

for _, direction in pairs({"north", "east", "south", "west"}) do
    local short = string.upper(string.sub(direction, 1, 1))
    mk2.structure[direction].layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/boiler-" .. short .. "-idle.png"
    mk2.structure[direction].layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-boiler-" .. short .. "-idle.png"
end

local mk3 = table.deepcopy(data.raw["boiler"]["boiler"])
mk3.name = "boiler-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.icon_size = 32
mk3.icon_mipmaps = nil
mk3.minable.result = mk3.name
mk3.max_health = 600
mk3.energy_consumption = "7.2MW"
mk3.energy_source.emissions_per_minute = 20
mk2.next_upgrade = nil

for _, direction in pairs({"north", "east", "south", "west"}) do
    local short = string.upper(string.sub(direction, 1, 1))
    mk3.structure[direction].layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/boiler-" .. short .. "-idle.png"
    mk3.structure[direction].layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-boiler-" .. short .. "-idle.png"
end

data:extend({mk2, mk3})
