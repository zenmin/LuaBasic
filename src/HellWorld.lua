--
-- Created by IntelliJ IDEA.
-- User: 74170
-- Date: 2019/10/17
-- Time: 10:39
-- To change this template use File | Settings | File Templates.
--
--print("hello")

-- 演示
list = { "k1", "v1", "k2", "v2" }
print("type：" .. type(list))
for k, v in pairs(list) do
    print(k .. ":" .. v)
end

table = { k1 = "v1", k2 = "v2" }
print("type：" .. type(table))
for k, v in pairs(table) do
    print(k .. ":" .. v)
end

-- 基本类型Boolean
b = true

if b or false then
    print(b)
end

-- string 类型
string1 = "now this is a string"
print(string1)

string2 = [[
    <html>
<head></head>
<body>
    <a href="http://www.baidu.com/">点击</a>
</body>
</html>
]]
print(string2)

-- 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字:
num1 = 2
print("6" + num1)
print("2" + "6")

print("2" .. 6)

--print("e" + 0)

--使用 # 来计算字符串的长度，放在字符串前面
len = "实打实的萨达是"
print(#len)

list1 = { "k1", "v1", "k2", "v2" }
--list["k1"] = 22
--print(list["k1"])
for k in pairs(list1) do
    print(list1[k])
end

-- 函数定义
function compult(x, y)
    if x > 0 then
        return x + y
    else
        return x - y
    end
end

print(compult(1, 2))
print(compult(-1, 2))

-- 变量
--应该尽可能的使用局部变量，有两个好处：
--1. 避免命名冲突。
--2. 访问局部变量的速度比全局变量更快。
function varFun()
    local v = 1
    v1 = 2
end

varFun()

print(v)
print(v1)

-- 赋值语句右边的值会依次赋给左边的变量。
a, b, c = 1, 2, 3

print(a .. b .. c)

a, b = b, a
print(a .. b)

-- 循环
local w1 = 6
while (w1 >= 0) do
    w1 = w1 - 1
    print("while : " .. w1)
end

-- 初始值1 小于=10 步长1
for v = 1, 10, 1 do
    print(v)
end

-- 流程控制
if (2) then
    print("0 为 true")
else
    print("1 为 false")
end

s1, s2 = string.find("www.baidu.com", "baidu")
print(s1, s2)

-- lua可以有多个返回值
function compultRange(x)
    local y = 1
    if x < 0 then
        x = x + 1
        return x, y
    else
        y = y - 1
        return x, y
    end
end

print(compultRange(1))

-- 可变参数  固定参数必须放在变长参数之前:
function add(v1, ...)
    local r = v1
    local var = { ... }
    for i, v in pairs(var) do
        r = r + v
    end
    print("可变参数数量：" .. #{ ... })
    return r
end

print(add(5, 2, 3, 4, 5, 6))

-- 运算符 不等于 是这个 ~=
-- 其他运算符
--      .. 连接两个字符串
--      #  返回字符串或表的长度
print((1 + 1) ~= 2)

local m1 = 1
local m2 = 0
if (m1 > 0 and m2 < 1) then
    print(true)
end

if (m1 > 0 or m2 < -1) then
    print(true)
end
-- not 取反
print(not (1 + 1) ~= 2)

print(string.upper("sdasda"))
print(string.lower("ASDASAS"))
-- 字符串翻转
print(string.reverse("abcdefg"))
-- 格式化
print(string.format("my name is : %s", 'zm'))
-- 字符串长度
print(string.len("abc"))
-- 返回字符串的n个拷贝
print(string.rep("abc ", 2))
-- 转为char
print(string.char(65))
--byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。
print(string.byte("asdsa", 1))
print(string.format("aaa%s", 1))
print(string.gsub("asd.asdas.sa", '%A', '', 1))

--数组  下标是从1开始的
list2 = { 1, 2, 3, 4 }
for i = 0, 4 do
    print(list2[i])
end



require("module")
--
module.testConstat()

















