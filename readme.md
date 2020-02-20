# Stats

```
heat-pipe                                mk1         mk2
-------------------------------------------------------------------------
max_health                               200         300
heat_buffer.max_temperature              1000        2000
heat_buffer.max_transfer                 1GW         8GW
heat_buffer.minimum_glow_temperature     350         700


steam-engine                             mk1         mk2         mk3
-------------------------------------------------------------------------
max_health                               400         600         1200
effectivity                              1           1.5         2
fluid_usage_per_tick                     0.5         0.75        1


steam-turbine                            mk1         mk2         mk3
-------------------------------------------------------------------------
max_health                               300         600         900
effectivity                              1           1.25        1.5
fluid_usage_per_tick                     1           1.5         2
maximum_temperature                      500         700         900


nuclear-reactor                          mk1         mk2         mk3
-------------------------------------------------------------------------
max_health                               500         1000        1500
energy_source.effectivity                1           1.5         2
maximum_temperature                      500         750         1000
neighbour_bonus                          1           1.1         1.2
consumption                              40MW        80MW        160MW
heat_buffer.maximum_temperature          1000        1500        2000
heat_buffer.max_transfer                 10GW        20GW        40GW
heat_buffer.minimum_glow_temperature     350         525         700
heat_buffer.specific_heat                10MJ        20MJ        40MJ


boiler                                   mk1         mk2         mk3
-------------------------------------------------------------------------
max_health                               200         400         600
energy_consumption                       1.8MW       3.6MW       7.2MW
energy_source.emissions_per_minute       30          25          20


heat-exchanger                           mk1         mk2         mk3
-------------------------------------------------------------------------
max_health                               200         400         600
minimum_glow_temperature                 350         450         550
energy_consumption                       10MW        20MW        30MW
target_temperature                       500         600         700
```
