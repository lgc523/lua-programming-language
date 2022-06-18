#!/usr/local/bin/lua

-- 变量
--[[
全局变量
局部变量
表中的域
--]] a = 5 -- 全局变量
local b = 5 -- 局部变量

function joke()
    c = 5 -- 局部变量外部可见
    local d = 6
end

joke()
print(c, d) -- 5 nil

-- 局部变量覆盖

do
    local a = 6
    b = 6
    print(a, b)
end
print(a, b)

-- 赋值
a1, b1 = 10, 20 -- 多个变量同时赋值
a1, b1 = b1, a1
print(a1, b1)
-- 多个变量赋值，变量和值个数不等，变量补nil或忽略值
a_1, b_1, c_1 = 1, 2 -- 1 2 nil
print(a_1, b_1, c_1)
a_1, b_1 = a_1 + 1, b_1 + 1, 1 -- 1 ignore
print(a_1, b_1)
d, e, f = 0
print(d, e, f) -- 0 nil nil

-- table索引
print('-----table index-----')
site = {}
site['k'] = 'liguangchang.cn'
print(site['k'])
print(site.k)

-- 变量初始化
local g = "g"
local h = "h"
tbl = {}
tbl[g] = g
tbl[h] = h
print(tbl[g], tbl[h])
-- 变量不存在

tb = {
    x = 1,
    y = 1
}
print(tb.x, tb.y, tb["x"], tb["y"], tb[x]) -- 1 1 1 nil
tb = {
    z = 1,
    f = 1,
    ['z'] = 'z'--overwrite
}
for k, v in pairs(tb) do
    print(k .. ':' .. v)
end
tb = {
    z = 1,
    f = 1,
    ['z'] = z
}
print(...)
for k, v in pairs(tb) do
    print(k .. ':' .. v) -- z gone
end

