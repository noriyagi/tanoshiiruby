class HelloWorld
  Version = "1.0"

  attr_reader :name   # @nameの中をreadすることが可能
                      # attr_writer だと変更のみ可能
                      # attr_accessor だとどちらも可能

  def initialize(myname="Ruby")  #この名前のメソッドは、オブジェクト生成時に自動で実行
    @name = myname
  end

  def hello
    print "Hello,world. I am ",@name,".\n" #インスタンス変数
  end                                      #インスタンスと同じライフサイクル


  def greet                                #selfはレシーバとなるオブジェクト自身を指している。
    print "Hi, I am ", self.name, " .\n"   #レシーバ => ○○○.greet の○○○のこと。呼び出し元オブジェクト
  end

    bob   = HelloWorld.new("Bob")
    alice = HelloWorld.new("Alice")
    ruby  = HelloWorld.new("Ruby")

    bob.hello

  p bob.name

 end