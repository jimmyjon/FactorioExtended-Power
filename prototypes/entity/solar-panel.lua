-- Don't Match vanilla collision if bobpower is installed
if not mods["bobpower"] then
    data.raw["solar-panel"]["solar-panel"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
end

-- solar-panel                              mk1         mk2         mk3
-- max_health                               200         400         600
-- production                               60kW        240kW       960kW
--
-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["solar-panel"]["solar-panel"].fast_replaceable_group then
    data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
end

data.raw["solar-panel"]["solar-panel"].next_upgrade = "solar-panel-mk2"

local mk2 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
mk2.name = "solar-panel-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.icon_size = 32
mk2.icon_mipmaps = nil
mk2.minable.result = mk2.name
mk2.max_health = 400
mk2.next_upgrade = "solar-panel-mk3"
mk2.production = "240kW"

mk2.picture.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/" .. mk2.name .. ".png"
mk2.picture.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-" .. mk2.name .. ".png"

local mk3 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
mk3.name = "solar-panel-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.icon_size = 32
mk3.icon_mipmaps = nil
mk3.minable.result = mk3.name
mk3.max_health = 600
mk3.next_upgrade = nil
mk3.production = "960kW"

mk3.picture.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/" .. mk3.name .. ".png"
mk3.picture.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-" .. mk3.name .. ".png"

data:extend({mk2, mk3})
