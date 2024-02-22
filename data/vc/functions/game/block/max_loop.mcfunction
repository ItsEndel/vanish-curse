#> vc:game/block/max_loop
# @within function
#   vc:game/block/max
#   vc:game/block/max_loop
# @param storage{vc:data.blocks.active}



## 调试信息
function vc:storage/data/macro/reset
data modify storage vc:data macro.block set from storage vc:data blocks.active[0]

function vc:game/message/appear_mcr with storage vc:data macro

## 移除并判断是否继续循环
data modify storage vc:data blocks.inactive append from storage vc:data blocks.active[0]
data remove storage vc:data blocks.active[0]

execute store result score blocks vc.system run data get storage vc:data blocks.active
execute if score blocks vc.system > max_blocks vc.system run function vc:game/block/max_loop
