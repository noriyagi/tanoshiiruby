#Rational�N���X
require "rational"

r = Rational(2, 5) + Rational(1, 3)

p r

p r.to_f

#Complex�N���X
require "complex"

c = Complex(0, 2) ** 2
p c

#p���\�b�h��puts���\�b�h
#p���\�b�h�́u���l�v�u������v�̕\�����قȂ�B
#puts���\�b�h�͕�����\�������C���B�i���s�t���j

#���e����

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

#�Z�p�v�Z

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

#x.divmod(y) -> x��y�Ŋ��������Ɨ]���z��Ɋi�[����B
p 10.divmod(3.5)
p 10.divmod(-3.5)
p -10.divmod(3.5)
p -10.divmod(-3.5)

#x.remainder(y) -> x��y�Ŋ������]���Ԃ��B
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
