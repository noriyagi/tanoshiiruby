#多重代入で入れ替え->tmpいらないね！
a, b = 0, 1
a, b = b, a
p [a, b]
#多重代入　配列
ary = [1, 2]
a, b = ary
p a
p b

def foo(a, b, c)
	a + b + c
end
ary = [2, 3]
p foo(1, *ary)

def meth(arg, *args)
	p arg
 	p args
end

meth(1)

meth(1, 2, 3)

#演算子
a = 1
b = 2
v = (a > b) ? a : b
p v







