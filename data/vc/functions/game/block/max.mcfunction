#> vc:game/block/max
# @public
# @param score{vc.system::max_blocks} storage{vc:data.blocks.active}
#
# 若消失方块名单数量超出上限，从头开始移除项目直到符合上限



## 检测是否达到上限
execute store result score blocks vc.system run data get storage vc:data blocks.active
execute if score blocks vc.system > max_blocks vc.system run function vc:game/block/max_loop
