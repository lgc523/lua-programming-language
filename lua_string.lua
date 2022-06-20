#!/usr/local/bin/lua

str = [['lua STRING']]
print(str)
print(string.upper(str))
print(string.lower(str))

print(string.gsub(str, 'lua', 'aul', 1))
print(string.find(str, 'A', 1))
print(string.find(str, 'STRING')) -- 6,11

print(string.reverse(str))
print(string.format('the val is:%s', 'format'))
print(...)
print(string.char(97))
print(string.char(65))
print(string.byte('ABCD'))
print(string.byte('ABCD', 2))

print(string.len(str))
print(string.rep(str, 2))

for word in string.gmatch("hello lua user", "%a+") do
    print(word)
end

s = 'i have 10 dream'
print(string.match(s, '%d+ %a+'))
print(string.format('%d,%q', string.match(s, '(%d+) (%a+)')))

-- 字符串截取
print(string.sub(s, 5, -1))
print(string.sub(s, 5))
print(string.sub(s, -11)) -- 截取最后11个
print(string.sub(s, -110)) -- 越界输出原始数据

print('---日期格式化---')
data = 20;
month = 6;
year = 2022
print(string.format('日期格式化 %02d/%02d/%03d', data, month, year))
print(string.format('%.4f', 1 / 3))

--[[
%c - 接受一个数字, 并将其转化为ASCII码表中对应的字符
%d, %i - 接受一个数字并将其转化为有符号的整数格式
%o - 接受一个数字并将其转化为八进制数格式
%u - 接受一个数字并将其转化为无符号整数格式
%x - 接受一个数字并将其转化为十六进制数格式, 使用小写字母
%X - 接受一个数字并将其转化为十六进制数格式, 使用大写字母
%e - 接受一个数字并将其转化为科学记数法格式, 使用小写字母e
%E - 接受一个数字并将其转化为科学记数法格式, 使用大写字母E
%f - 接受一个数字并将其转化为浮点数格式
%g(%G) - 接受一个数字并将其转化为%e(%E, 对应%G)及%f中较短的一种格式
%q - 接受一个字符串并将其转化为可安全被Lua编译器读入的格式
%s - 接受一个字符串并按照给定的参数格式化该字符串
--]]

print('---格式化转义---')
print(string.format("%c", 65)) -- 输出S
print(string.format("%+d", 17.0)) -- 输出+17
print(string.format("%05d", 17)) -- 输出00017
print(string.format("%o", 17)) -- 输出21
-- print(string.format("%u", 3.14)) -- 输出3
print(string.format("%x", 13)) -- 输出d
print(string.format("%X", 13)) -- 输出D
print(string.format("%e", 1000)) -- 输出1.000000e+03
print(string.format("%E", 1000)) -- 输出1.000000E+03
print(string.format("%6.3f", 13)) -- 输出13.000
print(string.format("%q", "One\nTwo")) -- 输出"One\
-- 　　Two"
print(string.format("%s", "monkey")) -- 输出monkey
print(string.format("%10s", "monkey")) -- 输出    monkey
print(string.format("%5.3s", "monkey"))
