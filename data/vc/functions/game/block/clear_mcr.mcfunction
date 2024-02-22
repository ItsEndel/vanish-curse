#> vc:game/block/clear_mcr
# @public
# @context Positioned
# @param macro{block(string)}
#
# 清除周围的指定方块

$fill ~9 ~9 ~9 ~-9 ~9 ~-9 air replace $(block)
$fill ~9 ~8 ~9 ~-9 ~8 ~-9 air replace $(block)
$fill ~9 ~7 ~9 ~-9 ~7 ~-9 air replace $(block)
$fill ~9 ~6 ~9 ~-9 ~6 ~-9 air replace $(block)
$fill ~9 ~5 ~9 ~-9 ~5 ~-9 air replace $(block)
$fill ~9 ~4 ~9 ~-9 ~4 ~-9 air replace $(block)
$fill ~9 ~3 ~9 ~-9 ~3 ~-9 air replace $(block)
$fill ~9 ~2 ~9 ~-9 ~2 ~-9 air replace $(block)
$fill ~9 ~1 ~9 ~-9 ~1 ~-9 air replace $(block)

$fill ~9 ~0 ~9 ~-9 ~0 ~-9 air replace $(block)

$fill ~9 ~-1 ~9 ~-9 ~-1 ~-9 air replace $(block)
$fill ~9 ~-2 ~9 ~-9 ~-2 ~-9 air replace $(block)
$fill ~9 ~-3 ~9 ~-9 ~-3 ~-9 air replace $(block)
$fill ~9 ~-4 ~9 ~-9 ~-4 ~-9 air replace $(block)
$fill ~9 ~-5 ~9 ~-9 ~-5 ~-9 air replace $(block)
$fill ~9 ~-6 ~9 ~-9 ~-6 ~-9 air replace $(block)
$fill ~9 ~-7 ~9 ~-9 ~-7 ~-9 air replace $(block)
$fill ~9 ~-8 ~9 ~-9 ~-8 ~-9 air replace $(block)
$fill ~9 ~-9 ~9 ~-9 ~-9 ~-9 air replace $(block)
