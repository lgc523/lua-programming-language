#!/usr/local/bin/lua
--[[
算术运算符
1.+
2.-
3.*
4./
5.%
6.^ 乘幂
7.- 负号
8.// 整除 >= 5.3
关系运算符
1.== 等于
2.~= 不等于
3.>
4.<
5.>=
6.<=
逻辑运算符
1.and
2.or
3.not 

.. 连接字符串
# 返回字符串/表的长度
--]]

print(5.23//0.23)--22.739 -> 22.0
print(-5.23//0.23)-- -23.0

a,b=true,false
print(not(a or b)) --false

local tbl={}
tbl["a"]="va"
tbl["b"]="vb"
print(#'abc')--3
print(#tbl)
