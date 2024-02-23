#> vc:game/tick
# @within function vc:tick



## 秒计时器
scoreboard players add tick vc.system 1
execute if score tick vc.system matches 20.. run function vc:game/timer/second

## 检测性能模式
execute if score mode vc.system matches 0 run function vc:game/perf/high/tick
execute if score mode vc.system matches 1 run function vc:game/perf/mid/tick
