class HelloWorld
  class << HelloWorld # class << self ‚à‚¨k
  def hello(name)
    print name," said hello.\n"
  end
  end

HelloWorld.hello("Bob")

  def self.hi(name)
    print name," Hi!!\n"
  end

HelloWorld.hi("Ruby")
end
