#!/usr/local/bin/lua

-- lua 中迭代器是一种支持指针类型的结构，可以遍历集合中的每一个元素
--[[
for k,v in pairs(t) do
    print(k,v)
end
--]] 
function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

for i, n in square, 3, 0 do
    print(i, n)
end


