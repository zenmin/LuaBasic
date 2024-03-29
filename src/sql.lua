---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 74170.
--- DateTime: 2019/11/4 14:21
--- Lua的sql操作

luasql = require("luasql.mysql")

-- 创建环境对象
env = luasql.mysql()

-- 创建连接
conn = env:connect("ncmc", "ncmc", "sfhR38nc7Gt4Ly7C", "127.0.0.1", 3309)

-- 设置数据库的编码格式
conn:execute("set names UTF-8")

-- 执行sql查询
res = conn:execute("select * from hy_usergroup")

row = res:fetch({}, "a")

--文件对象创建
file = io.open("test.txt", "w+")

while row do
    str = string.format("row: %d %s \n", row.gid, row.name)

    -- 写入文件
    file:write(str)

    row = res:fetch({}, "a")
end

-- 关闭连接
file:close()
conn:close()
env:close()


