#> vc:game/block/next
# @public
# @param storage{vc:data.blocks.inactive}



## 获取随机数
function vc:storage/data/macro/reset
data modify storage vc:data macro.min set value 0

execute store result score length vc.system run data get storage vc:data blocks.inactive
scoreboard players remove length vc.system 1
execute store result storage vc:data macro.max int 1 run scoreboard players get length vc.system

execute store result storage vc:data macro.index int 1 run function vc:macro/random_mcr with storage vc:data macro

## 调用宏函数
function vc:game/block/next_mcr with storage vc:data macro

## 设置下一个方块的时间
scoreboard players operation block.next vc.system += interval vc.system
