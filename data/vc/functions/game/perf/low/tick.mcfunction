#> vc:game/perf/low/tick
# @within function vc:game/timer/second



## 循环清除所有方块
data modify storage vc:data blocks.loop set from storage vc:data blocks.active

function vc:storage/data/macro/reset
function vc:game/perf/low/clear_loop
