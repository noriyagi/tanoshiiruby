#Mathモジュール

 #明示的に指定
f = 2
p Math.sqrt(f)
 #includeする
include Math
p sqrt(f)

#型変換
p 10.to_f
p 10.8.to_i
p -10.8.to_i
p "123".to_i
p "123.4".to_f

#round
p 1.2.round
p 1.8.round
p -1.2.round
p -1.8.round

#ceil -> レシーバよりも大きくて最も小さい整数
#floor -> レシーバよりも小さくて最も大きな整数
p 1.5.ceil
p -1.5.ceil
p 1.5.floor
p -1.5.floor

#10.5 ビット演算

def pb(i)
  #printfの%bフォーマットを使って、整数の末尾8ビットを2進数表示する。
  printf("%08b\n", i & 0b11111111)
end

b = 0b11110000
pb(b)
pb(~b)
pb(b & 0b00010001)
pb(b | 0b00010001)
pb(b ^ 0b00010001)
pb(b >> 3)
pb(b << 3)

#10.6 乱数

p rand
p rand(100)
p rand(100)

#10.7 数え上げ

ary = []
10.times do |i|
  ary << i
end

p ary

ary2 = []
2.upto(10) do |i|
  ary2 << i
end

p ary2

ary3 =[]
10.downto(2) do |i|
  ary << i
end

p ary3

p ary4 = []
2.step(10,3) do |i|
  ary4 << i
end
p ary4

ary5 = []
10.step(2,-3) do |i|
  ary5 << i
end
p ary5

