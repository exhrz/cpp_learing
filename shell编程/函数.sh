#!/bin/bash

# 使用if false进行批量注释（说明文字）
if false; then
    系统函数
    basename，删掉路径最后一个 / 前的所有部分（包括/），常用于获取文件名。
    基本语法
    basename [pathname] [suffix]
    basename [string] [suffix]
    如果指定 suffix，也会删掉pathname或string的后缀部分。
fi

# basename示例
basename /usr/bin/sort        # 输出 sort
basename include/stdio.h      # 输出 stdio.h
basename include/stdio.h .h   # 输出 stdio

if false; then
    dirname，删掉路径最后一个 / 后的所有部分（包括/），常用于获取文件路径。
    基本语法
    dirname pathname
    如果路径中不含 / ，则返回 '.' （当前路径）。
fi

# dirname示例
dirname /usr/bin              # 输出 /usr
dirname /dir1/str             # 输出 /dir1
dirname /dir2/str             # 输出 /dir2
dirname stdio.h               # 输出 .


# 自定义函数
if true;then
    # [ function ] funname[()]
    # {
    #     Action;
    #     [return int;]
    # }

    # # 调用
    # funname 参数1 参数2...
    echo "=======这是一个分割线========="
fi

#计算两个输入参数的和
function getSum()
{
    SUM=$[$n1+$n2]
    echo "sum=$SUM"
}
read -p "输入参数n1 " n1
read -p "输入参数n2 " n2
getSum $n1 $n2
