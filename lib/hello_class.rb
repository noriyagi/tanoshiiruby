class HelloWorld
  Version = "1.0"
 

  def initialize(myname="Ruby")  #���̖��O�̃��\�b�h�́A�I�u�W�F�N�g�������Ɏ����Ŏ��s
    @name = myname
  end

  def hello
    print "Hello,world. I am ",@name,".\n" #�C���X�^���X�ϐ�
  end                                      #�C���X�^���X�Ɠ������C�t�T�C�N��

  def name                        #���ړǂނ��Ƃ͂ł��Ȃ��B
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

