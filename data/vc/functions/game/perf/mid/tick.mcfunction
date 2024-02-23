#> vc:game/perf/mid/tick
# @within function vc:game/tick



## 循环清除所有方块
execute unless data storage vc:data blocks.loop[0] run data modify storage vc:data blocks.loop set from storage vc:data blocks.active

scoreboard players operation step vc.system = proc vc.system

function vc:storage/data/macro/reset
function vc:game/perf/mid/clear_loop
