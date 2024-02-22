#> vc:game/block/active_mcr
# @public
# @param macro{block(string)} storage{vc:data.blocks.active}
#
# 将一种方块加入到消失名单中



## 添加方块
$data modify storage vc:data blocks.active append value $(block)

## 调试信息
$tellraw @a [{"translate": "block.minecraft.$(block)"}, {"text": " has been vanished."}]

## 检测是否达到上限
function vc:game/block/max
