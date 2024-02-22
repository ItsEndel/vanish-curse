#> vc:game/start
# @public
# @param storage{vc:data.difficulty(diff)}
# 开始游戏



## 重置数据
data modify storage vc:data blocks set value {"active": [], "inactive": [], "value": []}

## 重置分数
scoreboard players set tick vc.system 0
scoreboard players set second vc.system 0

## 读取变量
execute store result score interval vc.system run data get storage vc:data difficulty.interval
scoreboard players operation block.next vc.system = interval vc.system

execute store result score max_blocks vc.system run data get storage vc:data difficulty.max_blocks

data modify storage vc:data blocks.values set from storage vc:data difficulty.blocks
execute store result score next_blocks vc.system run data get storage vc:data blocks.values[0].time

## 设置系统状态
scoreboard players set state vc.system 1

## 重置玩家状态
kill @a

## 标题
title @a title "Game Start!"
