#!/usr/local/bin/lua

arr = {'study', 'lua'}

for i = 0, 2 do
    print(arr[i])
end
--[[
nil
study
lua
--]]

array = {}
for i = -2, 2 do
    array[i] = i * 2
end

-- 数组下标也可以从0开始
for i = -2, 2 do
    print(array[i])
end
--[[
-4
-2
0
2
4
--]]

print('---多维数组---')
ma = {}
for i = 1, 3 do
    ma[i] = {}
    for j = 1, 3 do
        ma[i][j] = i * j
    end
end

-- 访问数组
for i = 1, 3 do
    local s =''
    for j = 1, 3 do
        s = s..ma[i][j]
    end
    print(s)
end
