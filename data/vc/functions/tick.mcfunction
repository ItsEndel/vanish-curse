#> vc:tick
# @within tag/function minecraft:tick



## 检测系统状态
execute if score state vc.system matches 0 run return run function vc:lobby/tick
execute if score state vc.system matches 1 run return run function vc:game/tick
