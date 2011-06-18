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

#12.4 文字列をつなげる
hello = "Hello, "
world = "World!"

str = hello + world  #つなげる
p str

hello << world #後ろに追加する感じ
p hello

hello.concat(world) #後ろに追加する感じ２
p hello

#12.5 文字列のインデックス
str = "abcdef"
p str[0]
p str[0].chr

p str[-1]
p str[-1].chr

p str[1,2]
p str[1,3]

str = "あいうえお"
p str.split(//s)[2]
p str[2,4]
p str[2,3]

#12.6 文字列を比較する。

p "aaa" == "bbb"
p "aaa" != "bbb"

p ("aaaaa" < "b")
p ("0" < "a")

#12.7 改行文字の扱い
str = "abcde"

#chop -> 必ず１文字削る。
newstr = str.chop
p newstr
#chomp -> 改行がある場合のみ削る。
newstr = str.chomp
p newstr

str2 = "abcd\n"
newstr = str2.chop
p newstr

newstr = str2.chomp
p newstr

#12.8 検索と置換
str = "sumomomomomomomomonouchi"
p str.index("momo")
p str.rindex("momo")
p str.index("aaaa")

p str.include?("momo")
p str.include?("aaaa")

#12.9 文字列と配列で共通するメソッド

str = "abcde"
str[2,1] = "C"
p str

str = "Hello, Ruby!"
p str.slice!(-1)
p str.slice!(5..6)
p str.slice!(0, 5)
p str

#12.9.2 Enumerableモジュールのメソッド
#each_lineメソッドで取り出した行をcollectメソッドで処理する。

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

#12.10 その他
#先頭、末尾の空白を取り除く
p "  aaa  bbb  ccc  ".strip

#大文字－小文字置き換え
str = "Object-Oriented Language"
p str.upcase

p str.downcase

p str.swapcase

p str.capitalize

str = "abcdef"

p str.tr("b","B")
p str.tr("bc","BC")
p str.tr("b-e","B-E")

#12.11.2 iconvライブラリ
require "iconv"
result = ""
cd = Iconv.open("UTF-8", "Shift-JIS")
result << cd.iconv("あ")
result << cd.iconv("い")
result << cd.iconv("う")
cd.close
p result
p "あ"
p "い"
p "う"

require "iconv"
result = ""

Iconv.open("UTF-8", "Shift-JIS"){|cd|
result << cd.iconv("あ")
result << cd.iconv("い")
result << cd.iconv("う")
}

#第13章　Hash Class

#13.1 ハッシュの復習
person = Hash.new
person[0] = "田中"
person[1] = "佐藤"
p person[1]

#13.1 ハッシュの作り方
h1 = {"a" => "b", "c" => "d"}
p h1["a"]

#13.2 Hash.new を使う。
h1 = Hash.new
h2 = Hash.new("")
p h1["not_key"]
p h2["not_key"]

#13.3 取り出す、設定する。
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

#13.3.2 ハッシュのデフォルト値

#生成時に指定
h = Hash.new(1)
h["a"] = 10

p h["a"]
p h["x"]
p h["y"]

#デフォルト値を生成するブロックを指定する
h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

h["a"] = "b"

p h["a"]
p h["x"]
p h["y"]

#fetch を利用する。
h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

p h.fetch("x", "(undef)")

#13.4 あるオブジェクトをキーや値として持っているか。
#Keyとして
h = {"a" => "b", "c" => "d"}
p h.key?("a")
p h.has_key?("x")
#Valueとして
p h.value?("b")
p h.has_value?("z")

#13.5 ハッシュの大きさを調べる。
p h.length
p h.size

p h.empty?

h2 = Hash.new
p h2.empty?

#13.6 キー値を削除する。
h = {"R" => "Ruby"}
p h["R"]
h.delete("R")
p h["R"]

h = {"R" => "Ruby"}
p h.delete("P"){|key| "no #{key}."} #対象が存在しなかった場合、ブロックを実行

#条件付き
h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "P"} #条件に当てはまらないものを出力

#条件付き２
h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "L"}
p h.reject!{|key, value| key == "L"}

#13.7 ハッシュを初期化する
#使ったハッシュを空に。
h = {"R" => "Ruby", "P" => "Perl"}
h.clear
p h.size

#ハッシュのハッシュ
table = {"A" =>{"a" => "x", "b" => "y"}, "B" => {"a" => "v", "b" => "w"}}

p table["A"]["a"]
p table["B"]["a"]

#第14章　Regexp Class
#14.1 正規表現について

re = Regexp.new("Ruby")

#14.2 正規表現のパターンとマッチング
#
# if 正規表現 =~ 文字列
#   マッチしたときの処理
# else
#   マッチしなかった時の処理
# end

#14.2.1 通常の文字によるマッチング
#14.3 quoteメソッドを使った正規表現
re1 = Regexp.new("abc*def")
re2 = Regexp.new(Regexp.quote("abc*def"))

p (re1 =~ "abc*def")
p (re2 =~ "abc*def")

str = "ABC\nDEF\nGHI"
p /DEF.GHI/ =~ str
p /DEF.GHI/m =~ str

#14.5 キャプチャ
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

#14.6 正規表現を使うメソッド

str = "abc   def   g   hi"
p str.sub(/\s+/, " ")
p str.gsub(/\s+/, " ")

#sub,gsub は置換のメソッド。
#マッチした部分を置換する。
#ブロックを渡すと、マッチした部分を処理して置換する。
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

#!4.6.2 scanメソッド
str = "abracatabura"
str.scan(/.a/) do |matched|
  p matched
end

#パターンに()が使われていると、そこを配列に置き換えて返してくる。
str.scan(/(.)(a)/) do |matched|
  p matched
end
#更にブロックを（）の数だけ並べると、要素を取り出せる。
str.scan(/(.)(a)/) do |a, b|
  p a+"-"+b
end
#ブロックでない場合は、マッチした文字列の配列を返す。
p str.scan(/.a/)

#14.7 正規表現の例
#URLを含む行を抽出する。
#/http:\/\//
#/http:\/\/([^\/]*)\// →[]の中の先頭で"^"を使うと、そこで指定されたもの以外をさす。
#ここでは、"/"以外の＊とマッチング！

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"

#第15章　IO Class

#15.1.1 標準入出力

$stdout.print "Output to $stdout.\n"
$stderr.print "Output to $stderr.\n"

#標準入力は端末か？

if $stdin.tty?
  print "Stdin is a TTY.\n"
else
  print "Stdin in not a TTY.\n"
end

#15.1.3 open-uri　ライブラリ
require "open-uri"

##HTTP経由でデータを取り込む(日本語優先option)
#options = {"Accept-Language" => "ja, en;q=0.5",}
#
#open("http://www.ruby-lang.org", options) do |io|
#  puts io.read
#end
#
##FTP経由でデータを取り込む
#open("ftp://www.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz") do |io|
#  open("ruby-1.8.7.tar.gz", "w") do |f|
#    f.write(io.read)
#end
#end

#15.1.4 stringio ライブラリ
require "stringio"

#ためておく事ができる
io = StringIO.new
io.puts("A")
io.puts("B")
io.puts("C")
io.rewind
p io.read
io.rewind
#取り出し
p io.gets
p io.gets
p io.gets

#15.2
#15.2.1 入出力
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
#15.2.2 出力
#puts
$stdout.puts "foo", "bar","baz"
#putc
$stdout.putc(82)
$stdout.putc(?R)
$stdout.putc("\n")

#15.3 ファイルポインタ
File.open("wc.rb") do |io|
  p io.read(5)
  p io.pos
  io.pos = 0
  p io.gets
  io.rewind
  p io.gets
end

#第１６章 FileクラスとDirクラス
#File.rename("aaa.txt", "after.txt")

#Dirが見つからないのでエラー
#File.rename("after.txt", "backup/data.txt")

#16.1.2 ファイルをコピーする
def copy(from, to)
  open(from) do |input|
    open(to, "w") do |output|
      output.write(input.read)
    end
  end
end

copy("after.txt", "after2.txt")

require "fileutils"
FileUtils.cp("after.txt", "afterafter.txt")
#FileUtils.mv("after.txt", "backup/after2.txt")

File.delete("after2.txt")
#16.2 ディレクトリの操作
p Dir.pwd
Dir.chdir("./../")
p Dir.pwd
Dir.chdir("./lib")
p Dir.pwd

p Dir.pwd
io = open("after.txt")
io.close

Dir.chdir("./../")
p Dir.pwd
io = open("./lib/after.txt")
io.close

#16.2.1 ディレクトリの内容を読む
dir = Dir.open("./")
while name = dir.read
  p name
end
dir.close

dir = Dir.open("./lib")
dir.each do |name|
  p name
end
dir.close

print "using block\n"

Dir.open("./lib") do |dir|
  dir.each do |name|
    p name
  end
end

#traverse
p "list16.1 -> Using ARGV[0]"

def traverse(path)
  if File.directory?(path)
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      traverse(path + "/" +name)
    end
    dir.close
  else
    process_file(path)
  end
end

def process_file(path)
  puts path
end

traverse(ARGV[0])

p "list16.2 -> Using ARGV[0]"
#traverse_by_glob
def traverse_by_grob(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
    unless File.directory?(name)
      process_file(name)
    end
  end
end

traverse_by_grob(ARGV[0])

#16.2.2 ディレクトリの作成と削除
Dir.mkdir("temp")
p "temp make!"
Dir.rmdir("temp")
p "temp remove!"

#16.3 ファイルとディレクトリの属性
require 'etc'

st = File.stat("./lib/after.txt")
pw = Etc.getpwuid(st.uid)
p pw.name
gr = Etc.getgrgid(st.gid)
p gr.name

filename = "after.txt"
open(filename, "w").close

#File.utime -> 最終参照、更新時刻を更新する。
st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime

p "-100s"

File.utime(Time.now-100, Time.now-100, filename)
st = File.stat(filename)

p st.ctime
p st.mtime
p st.atime

#16.4 ファイル名の操作
#path名の末尾を取得
p File.basename("/usr/local/bin/ruby")
p File.basename("src/ruby/file.c/", ".c")
p File.basename("file.c", ".c")
#一番後ろの"/"までを取得
p File.dirname("/usr/local/bin/ruby")
p File.dirname("src/ruby/file.c/")
#拡張子を取り出す
p File.extname("helloruby.rb")
#split
p File.split("usr/local/bin/ruby")
p File.split("ruby")
p File.split("/")

dir, base = File.split("usr/local/bin/ruby")
p dir
p base

#連結
p File.join("/usr/local/bin", "ruby")
p File.join(".", "ruby")

#絶対パスに変換
p Dir.pwd
p File.expand_path("bin")
p File.expand_path("../bin")

#16.5 ファイル操作関連のライブラリ
#16.5.1 find ライブラリ
require 'find'

IGNORES = [/^\./, /^CVS$/, /^RCS$/]

def listdir(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)
      dir, base = File.split(path)
      IGNORES.each do |re|
        if re =~ base
          Find.prune
        end
      end
    puts path
    end
  end
end
#出力が多いので。
#listdir("/")

#第１７章 TimeクラスとDateクラス
#17.2 Timeオブジェクト
p Time.new
p Time.now

t= Time.now
p t
p t.year
p t.month
p t.day

t = Time.mktime(2009, 10, 11, 22, 12, 56)
p t

#17.3 時刻を計算する。
t1 = Time.now
sleep(5)
t2 = Time.now
p t1 < t2
p t2 - t1
#
t = Time.now
p t
t2 = t + 60 * 60 * 24
p t2

p t.to_s
p t.strftime("%s %b %d %H:%M:%S %z %Y")

require 'time'

t = Time.now
p t.rfc2822
p t.iso8601

#17.5 ローカルタイム
t = Time.now
p t
t.utc
p t
t.localtime
p t

p Time.parse("Sat Oct 17 11:54:15 UTC 2009")
p Time.parse("2009/10/17")
p Time.parse("2009/10/17 20:54:19")
p Time.parse("H21.10.17")
p Time.parse("S48.9.28")

#17.7 DateTimeクラスを使う
require 'date'

#現在時刻を取得する。
t = DateTime.now
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.wday
p t.mday
p t.yday
p t.zone

#フォーマットする
p t.strftime("%Y/%m/%d %H:%M:%S")
p t.strftime("%a %b %d %H:%M:%S: %Z %Y")

p t.to_s

#解析してDateTimeオブジェクトを得る。
puts DateTime.parse("The Oct 13 22:59:36 JST 2009")
puts DateTime.parse("Tue, 13 Oct 2009 20:54:15 +0900")

#17.8 DateTimeクラスとTimeクラスの違い
require 'date'
#差分は１日の何倍かを示す。
t1 = DateTime.now
sleep(5)
t2 = DateTime.now
p t2 - t1
#加算は日数単位
puts t
puts t + 10
#時差
p t.offset

t1 = DateTime.now
t2 = t1.new_offset(0)
puts t1
puts t2

#17.9 Dateクラスを使って日付を求める
d = Date.today
puts d
p    d

p d.year
p d.month
p d.day
p d.wday
p d.mday
p d.yday

#月は固定で、日付だけさかのぼる。
d = Date.new(2009, 9, 25)
puts d

d = Date.new(2009, 4, -1)
puts d

d = Date.today
puts d
puts d + 1
puts d + 100
puts d - 1
#">>""<<"で月単位に移動
puts d >> 1
puts d >> 100
puts d << 1
puts d << 100

#日付のフォーマット
p t.strftime("%Y/%m/%d %H:%M:%S")
p t.strftime("%a %b %d %H:%M:%S %Z %Y")
p t.to_s

#文字列の解析
puts Date.parse("Tue Oct 14 11:50:12 JST 2009")
puts Date.parse("H21.10.14")
puts Date.parse("S48.9.28")

#