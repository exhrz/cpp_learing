#!/bin/bash
# 两种方式：
# if [ 条件判断式 ];then   
#     程序   
# fi

# # 或者（推荐）
# if [ 条件判断式 ]
# then
#     程序
# elif [ 条件判断式 ]
# then
#     程序
# fi

if [ $1 -ge 60 ];then 
echo "大于60"
else 
echo "不大于60"
fi

# case $变量名 in
# "值1")
# 如果变量值等于值1，则执行此处程序1
# ;;
# "值2")
# 如果变量值等于值2，则执行此处程序2
# ;;
# ...省略其它分支...
# *)
# 如果变量值不等于以上列出的值，则执行此处程序
# ;;
# esac

case $2 in
"1")
echo 值为1
;;
"2")
echo 值为2
;;
*)
echo 其他
;;
esac

# for 语法
# # 语法1
# for 变量名 in 值1 值2 值3...
# do
#     程序
# done

# # 语法2
# for ((初始值;循环控制条件;变量变化))
# do
#     程序
# done

for i in $*
do echo the arg is $i
done
echo "=============="

for j in $@
do  
    echo the arg is $j
done

SUM1=0
for((i=1;i<=100;i++))
do
    SUM1=$[$SUM1+$i]
done
echo 最后SUM1的值为$SUM1

# # while 语法
# while [ 条件判断式 ]
# do
#     echo '条件表达式' #这样也可以输出东西doge
# done

SUM2=0
i=0
while [ $i -le $1 ]
do
    SUM2=$[$SUM2+$i]
    i=$[$i+1]
done
echo 最后SUM2的值为$SUM2
