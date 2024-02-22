#> vc:game/block/next_mcr
# @within function vc:game/block/next
# @param macro{index(int)} storage{vc:data.blocks.[active, inactive]}



## 提取方块，测试能否放置
function vc:storage/data/macro/reset

$data modify storage vc:data macro.block set from storage vc:data blocks.inactive[$(index)]
execute store success score test vc.system run function vc:game/block/test_mcr with storage vc:data macro

$data remove storage vc:data blocks.inactive[$(index)]

execute if score test vc.system matches 1 run function vc:game/block/active_mcr with storage vc:data macro
execute if score test vc.system matches 0 if data storage vc:data blocks.inactive[0] run function vc:game/block/next
