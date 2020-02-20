-- nuclear-reactor                          mk1         mk2         mk3
-- max_health                               500         1000        1500
-- energy_source.effectivity                1           1.5         2
-- maximum_temperature                      500         750         1000
-- neighbour_bonus                          1           1.1         1.2
-- consumption                              40MW        80MW        160MW
-- heat_buffer.maximum_temperature          1000        1500        2000
-- heat_buffer.max_transfer                 10GW        20GW        40GW
-- heat_buffer.minimum_glow_temperature     350         525         700
-- heat_buffer.specific_heat                10MJ        20MJ        40MJ

-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group then
    data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"
end
data.raw["reactor"]["nuclear-reactor"].next_upgrade = "nuclear-reactor-mk2"

local mk2 = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
mk2.name = "nuclear-reactor-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.minable.result = mk2.name
mk2.max_health = 1000
mk2.neighbour_bonus = 1.1
mk2.consumption = "80MW"
mk2.energy_source.effectivity = 0.8
mk2.heat_buffer.max_temperature = 1500
mk2.heat_buffer.max_transfer = "20GW"
mk2.heat_buffer.minimum_glow_temperature = 525
mk2.heat_buffer.specific_heat = "20MJ"

mk2.next_upgrade = "nuclear-reactor-mk3"

mk2.picture.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/reactor.png"
mk2.picture.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-reactor.png"

local mk3 = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
mk3.name = "nuclear-reactor-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.minable.result = mk3.name
mk3.max_health = 1500
mk3.neighbour_bonus = 1.2
mk3.consumption = "160MW"
mk3.energy_source.effectivity = 0.6
mk3.heat_buffer.max_temperature = 2000
mk3.heat_buffer.max_transfer = "40GW"
mk3.heat_buffer.minimum_glow_temperature = 700
mk3.heat_buffer.specific_heat = "40MJ"

mk3.next_upgrade = nil

mk3.picture.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/reactor.png"
mk3.picture.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-reactor.png"

data:extend({mk2, mk3})
