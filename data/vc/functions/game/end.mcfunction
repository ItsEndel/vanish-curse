#> vc:game/end
# @public
# 结束游戏



## 设置系统状态
scoreboard players set state vc.system 0

## 中场开始
schedule function vc:lobby/start 3s replace
