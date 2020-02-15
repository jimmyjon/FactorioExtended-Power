-- steam-engine                             mk1         mk2         mk3
-- max_health                               400         600         800
-- effectivity                              1           1.5         2
-- fluid_usage_per_tick                     0.5         0.75        1
--
-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["generator"]["steam-engine"].fast_replaceable_group then
    data.raw["generator"]["steam-engine"].fast_replaceable_group = "steam-engine"
end
data.raw["generator"]["steam-engine"].next_upgrade = "steam-engine-mk2"

local mk2 = table.deepcopy(data.raw["generator"]["steam-engine"])
mk2.name = "steam-engine-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.icon_size = 32
mk2.icon_mipmaps = nil
mk2.minable.result = mk2.name
mk2.max_health = 600
mk2.next_upgrade = "steam-engine-mk3"
mk2.effectivity = 1.5
mk2.fluid_usage_per_tick = 0.75

mk2.horizontal_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/steam-engine-H.png"
mk2.horizontal_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-steam-engine-H.png"
mk2.vertical_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/steam-engine-V.png"
mk2.vertical_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-steam-engine-V.png"

local mk3 = table.deepcopy(data.raw["generator"]["steam-engine"])
mk3.name = "steam-engine-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.icon_size = 32
mk3.icon_mipmaps = nil
mk3.minable.result = mk3.name
mk3.max_health = 800
mk3.next_upgrade = nil
mk3.effectivity = 2
mk3.fluid_usage_per_tick = 1

mk3.horizontal_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/steam-engine-H.png"
mk3.horizontal_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-steam-engine-H.png"
mk3.vertical_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/steam-engine-V.png"
mk3.vertical_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-steam-engine-V.png"

data:extend({mk2, mk3})
