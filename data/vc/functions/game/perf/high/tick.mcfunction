#> vc:game/perf/high/tick
# @within function vc:game/tick



## 循环清除所有方块
data modify storage vc:data blocks.loop set from storage vc:data blocks.active

function vc:storage/data/macro/reset
function vc:game/perf/high/clear_loop
