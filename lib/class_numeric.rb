#Rationalクラス
require "rational"

r = Rational(2, 5) + Rational(1, 3)

p r

p r.to_f

#Complexクラス
require "complex"

c = Complex(0, 2) ** 2
p c

#pメソッドとputsメソッド
#pメソッドは「数値」「文字列」の表示が異なる。
#putsメソッドは文字列表示がメイン。（改行付き）

#リテラル

p 1234567
p 1_234_567
p 0b11111111
p 01234567
p 0o1234567
p 0d1234567
p 0x305419896

p 1.234
p 1.234e4
p 1.234e-4

#算術計算

p 1 + 1
p 1 + 1.0
p 2 - 1
p 2 - 1.0
p 3 * 2
p 3 * 2.0
p 3 * -2.0
p 5 / 2
p 5 / 2.0
p 5 % 2
p 5 % 2.0
p 5 ** 2
p 5 ** 0.5
p 5 ** -2.0
p 5 ** -2

#x.divmod(y) -> xをyで割った商と余りを配列に格納する。
p 10.divmod(3.5)
p 10.divmod(-3.5)
p -10.divmod(3.5)
p -10.divmod(-3.5)

#x.remainder(y) -> xをyで割った余りを返す。
p 10.remainder(3.5)
p 10.remainder(-3.5)
p -10.remainder(3.5)
p -10.remainder(-3.5)

#Error,Infinity,NaN
p 1 / 0
p 1 / 0.0
p 0 / 0.0
p 1.divmod(0)
p 1.divmod(0.0)
