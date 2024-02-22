#> vc:player/killed_dragon
# @within advancement vc:trigger/killed_dragon



## 撤销进度
advancement revoke @s only vc:trigger/killed_dragon

## 触发事件
execute if score state vc.system matches 1 run function vc:game/player/killed_dragon
