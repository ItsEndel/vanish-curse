#> vc:game/perf/mid/clear_loop
# @within function
#   vc:game/perf/mid/tick
#   vc:game/perf/mid/clear_loop



## 清除方块
data modify storage vc:data macro.block set from storage vc:data blocks.loop[0]
execute as @a at @s run function vc:game/block/clear_mcr with storage vc:data macro

data remove storage vc:data blocks.loop[0]

## 判断是否循环
scoreboard players remove step vc.system 1
execute if score step vc.system matches 1.. if data storage vc:data blocks.loop[0] run function vc:game/perf/low/clear_loop
