module HelloModule  #���W���[���͎�ɁA�N���X�ɃC���X�^���X���\�b�h��񋟂��邱�Ƃ�ړI�ɂ��Ă���B
  Version = "1.0"

  def hello(name)
    print "Hello,world. I am ",name,".\n"
  end

  module_function :hello  #���W���[���t�@���N�V�����̎w��̓V���{���I�I
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Bob")