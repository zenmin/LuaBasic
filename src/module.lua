---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 74170.
--- DateTime: 2019/10/18 14:50
--- 模块定义

-- 定义模块
module = {}

-- 定义变量
module.constat = "zm"

function module.testConstat()
    print(testPrivate() .. module.constat)
end

-- 这是一个不对外部暴露的函数
function testPrivate()
    --testPrivate1()
    return "my name is : "

end

-- 这是一个私有函数
local function testPrivate1()
    return "my name is : "
end


return module-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end-- Io end