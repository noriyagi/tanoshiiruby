#11.2

nums = [1, 2, 3, 4, 5]
p nums[1]

strs = ["a", "b", "c", "d"]
p strs[3]
print strs[3]
puts strs[3]

a = Array.new
p a

a = Array.new(5)
p a

a = Array.new(5,0)
p a

#������̔z������B�@%w�ŁB
lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang

iroha = %w(�� �� �� �� �� �� ��)
p iroha

#�n�b�V���e�[�u������z��̔z����쐬
color_table ={"black" => "#000000", "white" => "#FFFFFF"}
p color_table.to_a

#split���\�b�h�ŕ����񂩂�z����쐬����B
column = "2010/01/09 22:33 foo.html proxy.example.jp".split()
p column