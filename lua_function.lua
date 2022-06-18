#!/usr/local/bin/lua

-- lua 函数
--[[
    [scope:local] function function_name(arg1,arg2...)
        function_body
        return [result params comma separated]
    end    
--]] function max(num1, num2)
    if num1 > num2 then
        result = num1
    else
        result = num2
    end
    return result
end

print('invoke max:', max(2, 3))

-- 函数作为参数
mp = function(param)
    print('mp print:', param)
end

function add(n1, n2, func)
    result = n1 + n2
    func(result)
end
mp(23)
add(2, 3, mp)

-- 多返回值
start, endIndex = string.find('https://liguangchang.cn', 'liguangchang')
print(start, endIndex)

-- 可变参数
print(...)
function addMulti(...)
    local s = 0
    local args = {...}
    print('select args size:', select('#', ...)) -- 获取可变参数长度
    print('args size:', #args)
    for i, v in ipairs(args) do
        if (i < #args) then
            print(v .. '+')
        else
            print(v .. '=')
        end
        s = s + v
    end
    return s
end

print(addMulti(2, 3, 5))

function se(n, ...)
    local args = {...}
    return args[n]
end
print(...)

print('select:', se(3, 2, 3, 5)) -- fuck define select

function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end

fwrite("lua,乌拉!\n")
fwrite("lua!,%s%s%s", '乌拉!', '乌拉!', '乌拉!\n')

-- ... nil
function selectNil(...)
    s = select(3, ...) -- s = ... 里面第三个参数
    print(s)
    print(select(3, ...)) -- 输出 ... 索引位置 3 后面的序列

end

selectNil(1, 2, 3)
print(...)

-- 遍历 ...
function rangeMultiParam(...)
    print('range start')
    print('seq contain nil? ', containsNil(...))
    -- 可变参数包含 nil，获取到的表数据不是连续有序的序列
    p = {...}
    for i = 1, #p do -- #p = select('#',...)
        print(p[i])
    end
    print('range over\n')
end

-- pair
function containsNil(...)
    -- tabLe.pack() ,n 保存参数个数
    local arg = table.pack(...)
    for i = 1, arg.n do
        if arg[i] == nil then
            return true
        end
    end
    return false
end

function printMultiParamFromSpecIndex(...)
    rangeMultiParam(...)
    print('select # get args:', select('#', ...))
    print(select(1, ...))
end

p = {2, 3, 5}
printMultiParamFromSpecIndex(nil, nil, 2, 3, 5, nil)
printMultiParamFromSpecIndex(2, 3, 5)

print(containsNil(2, 3))
print(containsNil(2, 3, nil))

print(select(1, 'a', 'b', 'c'))
print(select('#', 'a', 'b', 'c'))

print('----table add-----')
function ad(...)
    local res = 0
    for i = 1, select('#', ...) do
        res = res + select(i, ...) -- select 返回第 i 个参数
    end
    print(res)
end

ad(1, 2, 3) -- 6

-- unpack
print('unpack->', table.unpack {1, 2, 3})
a, b = table.unpack {1, 2, 3}
print(a, b) -- 1 2

print('-----args-----')
local function args(...)
    if next({...}) then
        for i = 1, select('#', ...) do
            local param = select(i, ...)
            print(param)
        end
    else
        print('empty...')
    end
end

args(10, nil, 20)
--[[
    10
    nil
    20
--]]

local t = {10, nil, 20}
for k, v in pairs(t) do
    print(k, v)
end
--[[
1       10
3       20
--]]

for i = 1, select('#', table.unpack(t)) do
    local param = select(i, table.unpack(t))
    print(param)
end
