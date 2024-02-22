#> vc:scoreboard/default_mcr
# @public
# @param macro{obj(string), name(string), value(int)}
#
# 若指定的计分板项没有分数，为其初始化分数



$execute unless score $(name) $(obj) matches -2147483648..2147483647 run scoreboard players set $(name) $(obj) $(value)
