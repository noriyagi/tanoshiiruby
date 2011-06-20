#20.6 ブロック付きメソッドを作る
#20.6.1 本のリストを作る

class Book
  attr_accessor :title, :author, :genre
  def initialize(title, author, genre=nil)
    @title = title
    @author = author
    @genre = genre  
  end
end
