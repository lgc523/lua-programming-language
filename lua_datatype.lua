#!/usr/local/bin/lua

--[[
1.lua 是动态类型语言
2，8 个基本数据类型
| nil      | 无效值，条件表达式==false                      
| boolean  | false\|true                              
| number   | 双精度类型的实浮点数                        
| string   | 字符串，由双引号或单引号表示                 
| function | c或lua 编写的函数                               
| userdata | 表示任意存储在变量中的 c数据结构                 
| thread   | 标识执行线路，用于执行协同程序                   
| table    | 表，关联数组，索引可以是是数字、字符串或者表类型 
--]] print(type("string type")) -- string
print(type(12.3 * 5)) -- number
print(type(print)) -- function
print(type(type)) -- function
print(type(true)) -- boolean
print(type(nil)) -- nul
print(type(type(X))) -- string
print(type(a)) -- nil

-- boolean
print("-----boolean-----")
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("false or nil")
else
    print("false or nil all false")
end

if 0 then
    print('数字 0 = true')
else
    print('数字 0 = false')
end

if 1 then
    print('数字 1 = true')
else
    print('数字 1 = false')
end

-- string
print('-----string-----')
html = [[
    <html>
<head></head>
<body>
    <a href="https://www.lua.org/start.html">lua</a>
</body>
</html>
]]
print(html)

-- string 上算术操作，会将字符串转换为数字
print('2' + 3)
print('2' + '3')
print('2+3')
print('2.3' * '5')
s = '.' .. '.'
print('字符串连接使用 ..-> ' .. s)
print('#s = len(s)= ' .. #s)
print('2' .. '3')

-- # 放在字符串前面，获取字符串长度, .. 连接字符串

-- table
print("-----table-----")
tab1 = {
    key1 = "val1",
    key2 = "val2",
    "val3",
    "val0"
}
print(type(tab1))
print(tab1)
--[[
1 - val3
2 - val0
key1 - val1
key2 - val2
--]]
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
tab1 = nil
print('print/check table...')
print(type(tab1)) -- nil
print(tab1 == nil) -- true
print(tab1 == "nil") -- false
print(type(tab1) == nil) -- false
print(type(tab1) == "nil") -- true type(x) 返回 "nil" 字符串类型

print(...)
local tbl1 = {} -- 创造表达式创建空表
local tbl2 = {'java', 'go', 'lua'} -- 创造表达式直接创建数据
for k, v in pairs(tbl2) do
    print(k .. ' : ' .. v)
end
-- 表数据默认初始索引1
for k, v in pairs(tbl2) do
    print('key:', k)
end
print(...)
tbl1['key'] = 'val'
tbl1['key'] = 'val1'
-- tbl1['key'] =tbl1['key']+1 attempt to add a 'string' with a 'number'
tbl1['key'] = tbl1['key'] .. 1
for k, v in pairs(tbl1) do
    print(k .. ' : ' .. v)
end

-- function
print('-----function-----')
function fun1(n)
    if n == 0 then
        return 1
    else
        return n * fun1(n - 1)
    end
end

print(fun1(5))
f = fun1(5)
ff = fun1
print(f)
print(ff(5))

-- 匿名函数
print('-----匿名函数-----')
function fun2(tab, func)
    for k, v in pairs(tab) do
        print(func(k, v))
    end
end

tb = {
    k1 = 'v1',
    k2 = 'v2'
}
fun2(tb, function(k, v)
    return k .. ' = ' .. v
end)
