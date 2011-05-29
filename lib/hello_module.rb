module HelloModule  #モジュールは主に、クラスにインスタンスメソッドを提供することを目的にしている。
  Version = "1.0"

  def hello(name)
    print "Hello,world. I am ",name,".\n"
  end

  module_function :hello  #モジュールファンクションの指定はシンボル！！
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Bob")