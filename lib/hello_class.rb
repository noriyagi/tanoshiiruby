class HelloWorld
  Version = "1.0"
 

  def initialize(myname="Ruby")  #この名前のメソッドは、オブジェクト生成時に自動で実行
    @name = myname
  end

  def hello
    print "Hello,world. I am ",@name,".\n" #インスタンス変数
  end                                      #インスタンスと同じライフサイクル

  def name                        #直接読むことはできない。
    return @name
  end

  def name=(value)
    @name = value
  end

 end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new("Ruby")

bob.hello

p bob.name
p bob.name="Robot"

p HelloWorld::Version

