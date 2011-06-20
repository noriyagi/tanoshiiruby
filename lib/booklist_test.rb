require 'book'
require 'booklist'

#本のリストを作る
booklist = BookList.new
#挿入したい本を用意する
b1 = Book.new("たのしいRuby","もえ")
b2 = Book.new("プログラミング言語Ruby","まつもとひろゆき")
#リストに追加する
booklist.add(b1)
booklist.add(b2)
#リストの本を出力する１
print booklist[0].title, "\n"
print booklist[1].title, "\n"

puts "booklist_testからeachで取り出す"
	booklist.each do |book|
		print book.title, "\n"
	end

puts "booklist_testからeachで取り出す(titleを直接)"
	booklist.each_title do |title|
		print title, "\n"
	end

puts "authorを返す"
	booklist.each_title_author do |title, author|
		print "「", title, "」", author, "\n"
	end
puts "authorからtitleを取り出す"
	booklist.find_by_author(/グレッグ/) do |book|
		print book.title, "\n"
	end
 
