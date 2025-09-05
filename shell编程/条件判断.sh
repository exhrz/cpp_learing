#!/bin/bash
# 基本语法
# [ condition ] 注意condition前后要有空格。非空返回0，0为 true，否则为 false 。
if [ 'test01' = 'test' ]
then 
    echo '等于'
fi

if [ 20 -gt 10 ]
then 
echo '大于'
fi

if [ -e /root/shell/a.txt ]
then 
echo '存在'
fi


# 这里有点类似于 三元运算符 
if [ 'test02' = 'test0' ] && echo 'hello' || echo 'world' 
then 
echo "条件满足，执行后面的语句"
fi


