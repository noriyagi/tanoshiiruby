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

#11.3
#Hairetu & Index

alpha = ["a","b","c","d","e"]
p alpha[1]
p alpha[-1]
p alpha[-2]
#Hani
p alpha[1..3]
p alpha[1..7]
#Length
p alpha[2,2]
p alpha[2,3]

#Sounyuusuru
alpha[2,0] = ["X","Y"]
p alpha

#Array -> Array2
alpha = %w(a b c d e f)
p alpha.values_at(1,3,5)

#Hairetu to Syuugou
ary1 = ["a","b","c"]
ary2 = ["b","c","d"]

p (ary1 & ary2)
p (ary1 | ary2)
p (ary1 - ary2)

#[+] [|]
num  = [1,2,3]
even = [2,4,6]

p (num +even)
p (num | even)

#Que
p alpha.push("g")  #Last ni Push
p alpha.shift      #Sentou wo Toridasu
p alpha

#Stac
alpha = %w(a b c d e)
p alpha.push("f")
p alpha.pop
p alpha

#EX
a = [1,2,3,4,5]
p a.first
p a.last
p a

#11.7
#Tuika
a.unshift(0)
#<< Push
a << 6
p a
#a.concat(b)
a = [1,2,3,4,5]
a.concat([8,9])
p a
#Tikan
a = [1,2,3,4,5]
a[1,3] = 0
p a
#Tikan2 1kara3keta wo 0 nisuru
a = [1,2,3,4,5]
a[1,3] = [0,0,0]
p a

#Torinozoku
a =[1, nil, 3, nil, nil]
a.compact!
p "Hakai a =", a

a =[1, nil, 3, nil, nil]
b = a.compact
print "Not Hakai\n"
p "a=", a
p "b=", b

a = [1]
a.compact!
print "nilがない時のreturn"
p a

#HakaiTeki na Method

a = [1,2,3,4]
b = a
p b.pop
p b.pop
p b.pop

p a
p b

#Sitei no Youso(2) Wo Torinozoku
a = [1,2,3,2,1]
a.delete(2)  #Hairetukara (2) wo Torinozoku
p a

#Sitei no Index no Youso wo Torinozoku
a = [1,2,3,4,5]
a.delete_at(2)
p a

#Joukentsuki Delete
a = [1,2,3,4,5]
a.delete_if{|i| i > 3}
p a

#Siteisaretayouso wo Torinozoki Sore wo Kaesu
a = [1,2,3,4,5]
p a.slice(1, 2)
p a

a = [1,2,3,4,5]
p a.slice!(1,2)
p a

#Unique
a = [1,2,3,4,5,2,3,4]
a.uniq!
p a

#Shift
a = [1,2,3,4,5]
p a.shift
p a

#Pop
a= [1,2,3,4,5]
p a.pop
p a

#Hairetsu No Youso wo Okikaeru
a = [1,2,3,4,5]
a.collect! {|item| item*2 }
p a


#Sitei Okikae
p [1,2,3,4,5].fill(0)
p [1,2,3,4,5].fill(0,2)
p [1,2,3,4,5].fill(0,2,2)
p [1,2,3,4,5].fill("a",2..3)


#Heitanka
a = [1,[2,[3]],[4],5]
a.flatten!
p a

#Gyakujun
a = [1,2,3,4,5]
a.reverse!
p a

#Sort
a = [2,4,3,5,1]
a.sort!
p a

#11.8
#Iterator
a = [1,2,3,4,5]
b = a.collect{|i| i += 2}

#List
list = ["a","b","c","d"]
for i in 0..3
  print i+1, "番目の要素は",list[i],"です。\n"
end

#Sum_List
list = [1,2,3,4,5]
sum = 0
i = 0
for j in 0..4
  sum += list[j]
end
print "合計",sum,"\n"

#Sum_List->each
list = [1,2,3,4,5]
sum = 0
i = 0
list.each do |elem|
  sum += elem
end
print "合計",sum,"\n"

#each_with_index
list = ["a","b","c","d"]
list.each_with_index do |elem, i|
  print i+1, "番目の要素は",elem,"です！\n"
end

#Hakai tekina Kurikaesi
a = ["a","b","c","d"]
while item = a.pop
  p item
end
p a

#11.10

#Hairetu
#1,2,3
#4,5,6
#7,8,9

a = [[1,2,3],[4,5,6],[7,8,9]]
p a[1][2]

#Sippai
a = Array.new(3, [0,0,0])
p a

a[0][1] = 2
p a

#Kairyou
a = Array.new(3) do
  [0,0,0]
end
p a
a[0][1] = 2
p a

#sum_with_each
ary1 = [1,2,3,4,5]
ary2 = [10,20,30,40,50]
ary3 = [100,200,300,400,500]

i = 0
result = []
while i < ary1.length
  result << ary1[i] + ary2[i] + ary3[i]
  i += 1
end
p result

#sum_with_zip
ary1 = [1,2,3,4,5]
ary2 = [10,20,30,40,50]
ary3 = [100,200,300,400,500]

result = []
ary1.zip(ary2, ary3) do |a, b, c|
  result << a + b + c
end
p result

#第12章　String class

#12.1
#String
str1 = "Mojiretsu"
str2 = 'Mojiretsu'

p str1
p str2

moji = "文字列"
str3 = "あれも#{moji}"

p str3

str4 = 'あれも#{moji}'

p str4

#12.1.1 %Q,%qを使う
p desc = %Q{Rubyの文字列には「''」も「””」も使われます。}
p srt  = %q|Ruby said, 'Hello world!'|
# %Qは"",%qは''と同じ意味。

#12.1.2 ヒアドキュメント
#
# << "終了の記号"
#   置き換える文字列
# 終了の記号
#
#  ＊終了の記号は行頭に書かなければならない。
#　　->インデントが崩れがち。
#     -> "<<-" を使うと、行頭の空白とタブを無視してくれる。
i = 0
j = 0
10.times do |i|
  10.times do |j|
    print(<<-"EOB")
     i: #{i}
     j: #{j}
     i*j = #{i*j}
    EOB
   end
end

str = <<-EOB
Hello!
Hello!
Hello!
EOB

p str

#12.1.3 printf,sprintf

n = 123
printf("%d\n", n)
printf("%4d\n", n)
printf("%04d\n", n)
printf("%+d\n", n)

n = "Ruby"
printf("Hello,%s!\n", n)
printf("Hello,%8s!!\n", n)
printf("Hello,%-8s!!!\n", n)

#12.2 文字列の長さ
str = "just another ruby hacker,"
p srt.length
p str.size

#日本語は苦手
str = '写経やるよー！'
p str.length
# .length はバイト数をカウントしている。

p str.split(//s).length  #S-JIS
p str.split(//u).length  #UTF-8

#空かチェックする。
p "".empty?
p "foo".empty?

#12.3 文字を分割する。
str = "aaa:bbb:ccc:ddd:eee:fff"
column = str.split(/:/)
p column

column = str.unpack("a4a4a*")
p column
