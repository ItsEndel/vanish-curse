#> vc:game/block/list/set
# @within function vc:game/block/list/next



## 添加方块名单
data modify storage vc:data blocks.inactive set from storage vc:data blocks.values[0].values

## 切换到下一方块列表
data remove storage vc:data blocks.values[0]
execute store result score next_blocks vc.system run data get storage vc:data blocks.values[0].time
