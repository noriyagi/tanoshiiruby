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

#文字列の配列を作る。　%wで。
lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang

iroha = %w(い ろ は に ほ へ と)
p iroha

#ハッシュテーブルから配列の配列を作成
color_table ={"black" => "#000000", "white" => "#FFFFFF"}
p color_table.to_a

#splitメソッドで文字列から配列を作成する。
column = "2010/01/09 22:33 foo.html proxy.example.jp".split()
p column