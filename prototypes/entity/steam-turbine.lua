-- steam-engine                             mk1         mk2         mk3
-- max_health                               400         600         1200
-- effectivity                              1           1.5         2
-- fluid_usage_per_tick                     0.5         0.75        1

-- steam-turbine                            mk1         mk2         mk3
-- max_health                               300         600         900
-- effectivity                              1           1.25        1.5
-- fluid_usage_per_tick                     1           1.5         2
-- maximum_temperature                      500         700         900

-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["generator"]["steam-turbine"].fast_replaceable_group then
    data.raw["generator"]["steam-turbine"].fast_replaceable_group = "steam-turbine"
end
data.raw["generator"]["steam-turbine"].next_upgrade = "steam-turbine-mk2"

local mk2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
mk2.name = "steam-turbine-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.minable.result = mk2.name
mk2.effectivity = 1.25
mk2.fluid_usage_per_tick = 1.5
mk2.max_health = 300
mk2.maximum_temperature = 600
mk2.next_upgrade = "steam-turbine-mk3"

mk2.horizontal_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/steam-turbine-H.png"
mk2.horizontal_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-steam-turbine-H.png"
mk2.vertical_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/steam-turbine-V.png"
mk2.vertical_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-steam-turbine-V.png"

local mk3 = table.deepcopy(data.raw["generator"]["steam-turbine"])
mk3.name = "steam-turbine-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.minable.result = mk3.name
mk3.effectivity = 1.5
mk3.fluid_usage_per_tick = 2
mk3.max_health = 900
mk3.maximum_temperature = 700
mk3.next_upgrade = nil

mk3.horizontal_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/steam-turbine-H.png"
mk3.horizontal_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-steam-turbine-H.png"
mk3.vertical_animation.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/steam-turbine-V.png"
mk3.vertical_animation.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-steam-turbine-V.png"

data:extend({mk2, mk3})
