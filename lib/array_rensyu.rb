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
print "nil���Ȃ�����return"
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
  print i+1, "�Ԗڂ̗v�f��",list[i],"�ł��B\n"
end

#Sum_List
list = [1,2,3,4,5]
sum = 0
i = 0
for j in 0..4
  sum += list[j]
end
print "���v",sum,"\n"

#Sum_List->each
list = [1,2,3,4,5]
sum = 0
i = 0
list.each do |elem|
  sum += elem
end
print "���v",sum,"\n"

#each_with_index
list = ["a","b","c","d"]
list.each_with_index do |elem, i|
  print i+1, "�Ԗڂ̗v�f��",elem,"�ł��I\n"
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

#��12�́@String class

#12.1
#String
str1 = "Mojiretsu"
str2 = 'Mojiretsu'

p str1
p str2

moji = "������"
str3 = "�����#{moji}"

p str3

str4 = '�����#{moji}'

p str4

#12.1.1 %Q,%q���g��
p desc = %Q{Ruby�̕�����ɂ́u''�v���u�h�h�v���g���܂��B}
p srt  = %q|Ruby said, 'Hello world!'|
# %Q��"",%q��''�Ɠ����Ӗ��B

#12.1.2 �q�A�h�L�������g
#
# << "�I���̋L��"
#   �u�������镶����
# �I���̋L��
#
#  ���I���̋L���͍s���ɏ����Ȃ���΂Ȃ�Ȃ��B
#�@�@->�C���f���g�����ꂪ���B
#     -> "<<-" ���g���ƁA�s���̋󔒂ƃ^�u�𖳎����Ă����B
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

#12.2 ������̒���
str = "just another ruby hacker,"
p srt.length
p str.size

#���{��͋��
str = '�ʌo����[�I'
p str.length
# .length �̓o�C�g�����J�E���g���Ă���B

p str.split(//s).length  #S-JIS
p str.split(//u).length  #UTF-8

#�󂩃`�F�b�N����B
p "".empty?
p "foo".empty?

#12.3 �����𕪊�����B
str = "aaa:bbb:ccc:ddd:eee:fff"
column = str.split(/:/)
p column

column = str.unpack("a4a4a*")
p column

#12.4 ��������Ȃ���
hello = "Hello, "
world = "World!"

str = hello + world  #�Ȃ���
p str

hello << world #���ɒǉ����銴��
p hello

hello.concat(world) #���ɒǉ����銴���Q
p hello

#12.5 ������̃C���f�b�N�X
str = "abcdef"
p str[0]
p str[0].chr

p str[-1]
p str[-1].chr

p str[1,2]
p str[1,3]

str = "����������"
p str.split(//s)[2]
p str[2,4]
p str[2,3]

#12.6 ��������r����B

p "aaa" == "bbb"
p "aaa" != "bbb"

p ("aaaaa" < "b")
p ("0" < "a")

#12.7 ���s�����̈���
str = "abcde"

#chop -> �K���P�������B
newstr = str.chop
p newstr
#chomp -> ���s������ꍇ�̂ݍ��B
newstr = str.chomp
p newstr

str2 = "abcd\n"
newstr = str2.chop
p newstr

newstr = str2.chomp
p newstr

#12.8 �����ƒu��
str = "sumomomomomomomomonouchi"
p str.index("momo")
p str.rindex("momo")
p str.index("aaaa")

p str.include?("momo")
p str.include?("aaaa")

#12.9 ������Ɣz��ŋ��ʂ��郁�\�b�h

str = "abcde"
str[2,1] = "C"
p str

str = "Hello, Ruby!"
p str.slice!(-1)
p str.slice!(5..6)
p str.slice!(0, 5)
p str

#12.9.2 Enumerable���W���[���̃��\�b�h
#each_line���\�b�h�Ŏ��o�����s��collect���\�b�h�ŏ�������B

#str = "a\nb\nc\n"
#p str
#tmp = str.each_line.collect do |line|
#  line.chomp
#end
#p tmp

#12.9
s = "abc"
s.concat("def")
p s

s = "abcabc"
p s.delete("b")

s = "abcdefg"
p s.reverse

#12.10 ���̑�
#�擪�A�����̋󔒂���菜��
p "  aaa  bbb  ccc  ".strip

#�啶���|�������u������
str = "Object-Oriented Language"
p str.upcase

p str.downcase

p str.swapcase

p str.capitalize

str = "abcdef"

p str.tr("b","B")
p str.tr("bc","BC")
p str.tr("b-e","B-E")

#12.11.2 iconv���C�u����
require "iconv"
result = ""
cd = Iconv.open("UTF-8", "Shift-JIS")
result << cd.iconv("��")
result << cd.iconv("��")
result << cd.iconv("��")
cd.close
p result
p "��"
p "��"
p "��"

require "iconv"
result = ""

Iconv.open("UTF-8", "Shift-JIS"){|cd|
result << cd.iconv("��")
result << cd.iconv("��")
result << cd.iconv("��")
}

#��13�́@Hash Class

#13.1 �n�b�V���̕��K
person = Hash.new
person[0] = "�c��"
person[1] = "����"
p person[1]

#13.1 �n�b�V���̍���
h1 = {"a" => "b", "c" => "d"}
p h1["a"]

#13.2 Hash.new ���g���B
h1 = Hash.new
h2 = Hash.new("")
p h1["not_key"]
p h2["not_key"]

#13.3 ���o���A�ݒ肷��B
h = Hash.new
h["R"] = "Ruby"
p h["R"]

h.store("J", "Java")
p h.fetch("J")
#p h.fetch("N")

p h.fetch("N", "(undef)")
p h.fetch("N", String.new)

p h.keys
p h.values
p h.to_a

#13.3.2 �n�b�V���̃f�t�H���g�l

#�������Ɏw��
h = Hash.new(1)
h["a"] = 10

p h["a"]
p h["x"]
p h["y"]

#�f�t�H���g�l�𐶐�����u���b�N���w�肷��
h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

h["a"] = "b"

p h["a"]
p h["x"]
p h["y"]

#fetch �𗘗p����B
h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

p h.fetch("x", "(undef)")

#13.4 ����I�u�W�F�N�g���L�[��l�Ƃ��Ď����Ă��邩�B
#Key�Ƃ���
h = {"a" => "b", "c" => "d"}
p h.key?("a")
p h.has_key?("x")
#Value�Ƃ���
p h.value?("b")
p h.has_value?("z")

#13.5 �n�b�V���̑傫���𒲂ׂ�B
p h.length
p h.size

p h.empty?

h2 = Hash.new
p h2.empty?

#13.6 �L�[�l���폜����B
h = {"R" => "Ruby"}
p h["R"]
h.delete("R")
p h["R"]

h = {"R" => "Ruby"}
p h.delete("P"){|key| "no #{key}."} #�Ώۂ����݂��Ȃ������ꍇ�A�u���b�N�����s

#�����t��
h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "P"} #�����ɓ��Ă͂܂�Ȃ����̂��o��

#�����t���Q
h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "L"}
p h.reject!{|key, value| key == "L"}

#13.7 �n�b�V��������������
#�g�����n�b�V������ɁB
h = {"R" => "Ruby", "P" => "Perl"}
h.clear
p h.size

#�n�b�V���̃n�b�V��
table = {"A" =>{"a" => "x", "b" => "y"}, "B" => {"a" => "v", "b" => "w"}}

p table["A"]["a"]
p table["B"]["a"]

#��14�́@Regexp Class
#14.1 ���K�\���ɂ���

re = Regexp.new("Ruby")

#14.2 ���K�\���̃p�^�[���ƃ}�b�`���O
#
# if ���K�\�� =~ ������
#   �}�b�`�����Ƃ��̏���
# else
#   �}�b�`���Ȃ��������̏���
# end

#14.2.1 �ʏ�̕����ɂ��}�b�`���O
#14.3 quote���\�b�h���g�������K�\��
re1 = Regexp.new("abc*def")
re2 = Regexp.new(Regexp.quote("abc*def"))

p (re1 =~ "abc*def")
p (re2 =~ "abc*def")

str = "ABC\nDEF\nGHI"
p /DEF.GHI/ =~ str
p /DEF.GHI/m =~ str

#14.5 �L���v�`��
/(.)(.)(.)/ =~ "abc"
first = $1
second = $2
third = $3
p first
p second
p third

/(.)(\d\d)+(.)/ =~ "123456"
p $1
p $2
p $3

/(.)(?:\d\d)+(.)/ =~ "123456"
p $1
p $2

/C./ =~ "ABCDEF"
p $`
p $&
p $'

#14.6 ���K�\�����g�����\�b�h

str = "abc   def   g   hi"
p str.sub(/\s+/, " ")
p str.gsub(/\s+/, " ")

#sub,gsub �͒u���̃��\�b�h�B
#�}�b�`����������u������B
#�u���b�N��n���ƁA�}�b�`�����������������Ēu������B
str = "abracatabra"
nstr = str.sub(/.a/) do |matched|
  "<"+matched.upcase+">"
end

p nstr

str = "abracatabra"
nstr = str.gsub(/.a/) do |matched|
  "<"+matched.upcase+">"
end

p nstr

#!4.6.2 scan���\�b�h
str = "abracatabura"
str.scan(/.a/) do |matched|
  p matched
end

#�p�^�[����()���g���Ă���ƁA������z��ɒu�������ĕԂ��Ă���B
str.scan(/(.)(a)/) do |matched|
  p matched
end
#�X�Ƀu���b�N���i�j�̐��������ׂ�ƁA�v�f�����o����B
str.scan(/(.)(a)/) do |a, b|
  p a+"-"+b
end
#�u���b�N�łȂ��ꍇ�́A�}�b�`����������̔z���Ԃ��B
p str.scan(/.a/)

#14.7 ���K�\���̗�
#URL���܂ލs�𒊏o����B
#/http:\/\//
#/http:\/\/([^\/]*)\// ��[]�̒��̐擪��"^"���g���ƁA�����Ŏw�肳�ꂽ���̈ȊO�������B
#�����ł́A"/"�ȊO�́��ƃ}�b�`���O�I

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"

#��15�́@IO Class

#15.1.1 �W�����o��

$stdout.print "Output to $stdout.\n"
$stderr.print "Output to $stderr.\n"

#�W�����͂͒[�����H

if $stdin.tty?
  print "Stdin is a TTY.\n"
else
  print "Stdin in not a TTY.\n"
end

#15.1.3 open-uri�@���C�u����
require "open-uri"

##HTTP�o�R�Ńf�[�^����荞��(���{��D��option)
#options = {"Accept-Language" => "ja, en;q=0.5",}
#
#open("http://www.ruby-lang.org", options) do |io|
#  puts io.read
#end
#
##FTP�o�R�Ńf�[�^����荞��
#open("ftp://www.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz") do |io|
#  open("ruby-1.8.7.tar.gz", "w") do |f|
#    f.write(io.read)
#end
#end

#15.1.4 stringio ���C�u����
require "stringio"

#���߂Ă��������ł���
io = StringIO.new
io.puts("A")
io.puts("B")
io.puts("C")
io.rewind
p io.read
io.rewind
#���o��
p io.gets
p io.gets
p io.gets

#15.2
#15.2.1 ���o��
#while line = io.gets
#  line.chomp!
#  ****
#  ****
#  ****
#end
#
#p io.eof?
#
########################
#io.each do |line|
#  line.chomp!
#  ****
#end
#
#  gets => get string
#  puts => put string
#
########################
#while line = $stdin.gets
#  printf("%3d %s", $stdin.lineno, line)
#end
########################
#while ch = io.getc
#  ****
#  ****
#  ****
#end
#
#
#15.2.2 �o��
#puts
$stdout.puts "foo", "bar","baz"
#putc
$stdout.putc(82)
$stdout.putc(?R)
$stdout.putc("\n")

#15.3 �t�@�C���|�C���^
File.open("wc.rb") do |io|
  p io.read(5)
  p io.pos
  io.pos = 0
  p io.gets
end



