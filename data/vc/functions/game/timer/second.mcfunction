#> vc:game/timer/second
# @within function vc:game/tick



## 更新计时器
scoreboard players remove tick vc.system 20
scoreboard players add second vc.system 1

## 触发每秒事件
# 更新方块列表
execute if score second vc.system >= next_blocks vc.system run function vc:game/block/list/next

# 选择新方块
execute if score second vc.system >= block.next vc.system run function vc:game/block/next

# 低性能模式
execute if score mode vc.system matches 2 run function vc:game/perf/low/tick
