#> vc:game/block/list/next
# @within function vc:game/timer/second



## 判断列表修改模式
execute store result score append vc.system run data get storage vc:data blocks.values[0].append

execute if score append vc.system matches 0 run function vc:game/block/list/set
execute if score append vc.system matches 1 run function vc:game/block/list/append
