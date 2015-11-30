1. 多个命令同时执行用分号分割。

2. 同一行输出显示：echo -n "日期："; date

3. 用户变量：引用变量需要$符，赋值时则不需要。

4. 反引号（`）:将shell命令赋值给变量

5. 重定向
 	  
```
wc << EOF
It's a test!
shell is amazing!
EOF
```

6. 数学运算
expr: >、<、>=、<=、!=、｜、&、＋、－、*、/、%、[mactch ]string : regexp、substr string pos lenth、index string chars、length string、+ token、(expression)  

```
expr 1 + 2
```

7. 方括号进行运算
$[数学运算]，不用转译特殊符号。bash shell只支持整数运算。

8. 推出状态
$?: 0 1 2 126 127 128 129+x 130 255




