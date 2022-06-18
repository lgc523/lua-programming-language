#!/usr/local/bin/lua

--[[
1.while
2.for
3.repeat...until
4.embed    
]] -- while (0) do
--     print('2022年父亲节，刚过25岁，今天在看lua,👨‍👩‍👧‍👦')
-- end
--[[
    for init_expresss,end_condition,step do
        {loop body}
    end    
]] for i = 1, 19, 1 do
    print('今天是22年6月 ' .. i .. ' 号,xx ...')
end

if 2 > 1 then
    print(2 > 1)
end

repeat
    print('1+1=2')
until 1 + 1 == 2

-- 迭代器函数 pairs ipairs
arr = {"c", "java", "go", "c plus", "lua"}
print(#arr)
arr[3] = nil
print(#arr)
print(...)
for k, v in pairs(arr) do
    print(k, v)
end
print(...)
-- ipairs nil exit
for k, v in ipairs(arr) do
    print(k, v)
end

-- if else
print('-----if else-----')
local ifFlag = false
if ifFlag then
    print('if exec...')
else
    print('else exec...')
end
