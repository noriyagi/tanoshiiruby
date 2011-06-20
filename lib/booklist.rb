#booklist.rb

require 'book'

class BookList
##初期化
	def initialize()
		@booklist = Array.new
	end
##新しい本を加える
	def add(book)
		@booklist.push(book)
	end
##本の册数を返す
	def length
		@booklist.length
	end
##n番目に格納されている本を別の本にする
	def []=(n, book)
		@booklist[n] = book
	end
##n番目に格納されている本を返す
	def [](n)
		@booklist[n]
	end
##本をリストから削除する
	def delete(book)
		@booklist.delete(book)
	end
##eachで取り出すメソッドを定義
	def each
		@booklist.each do |book|
			yield book
		end
	end
##eachで取り出すメソッドを定義(タイトルを直接取り出す)
	def each_title
		@booklist.each do |book|
			yield book.title
		end
	end
##authorを取り出す
	def each_title_author
		@booklist.each do |book|
			yield book.title, book.author
		end
 	end
##authorからタイトルを取り出す
	def find_by_author(author)
		@booklist.each do |book|
			if author =~ book.author
				yield book
			end
		end
	end


end
