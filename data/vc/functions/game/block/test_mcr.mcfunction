#> vc:game/block/test_mcr
# @public
# @param macro{block(string)}
# @return



## 测试方块能否放置
fill 1 -63 1 -1 -64 -1 bedrock
setblock 0 -64 0 air

$return run setblock 0 -64 0 $(block)
