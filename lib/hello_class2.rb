class HelloWorld
  Version = "1.0"

  attr_reader :name   # @name�̒���read���邱�Ƃ��\
                      # attr_writer ���ƕύX�̂݉\
                      # attr_accessor ���Ƃǂ�����\

  def initialize(myname="Ruby")  #���̖��O�̃��\�b�h�́A�I�u�W�F�N�g�������Ɏ����Ŏ��s
    @name = myname
  end

  def hello
    print "Hello,world. I am ",@name,".\n" #�C���X�^���X�ϐ�
  end                                      #�C���X�^���X�Ɠ������C�t�T�C�N��


  def greet                                #self�̓��V�[�o�ƂȂ�I�u�W�F�N�g���g���w���Ă���B
    print "Hi, I am ", self.name, " .\n"   #���V�[�o => ������.greet �́������̂��ƁB�Ăяo�����I�u�W�F�N�g
  end

    bob   = HelloWorld.new("Bob")
    alice = HelloWorld.new("Alice")
    ruby  = HelloWorld.new("Ruby")

    bob.hello

  p bob.name

 end