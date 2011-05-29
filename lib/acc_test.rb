class AccTest
  def pub
    puts "pub is a public method.\n"
  end

  public :pub

  def priv
    puts "priv is a private method.\n"
  end

  def ppriv
    priv                # privateメソッドを呼び出してみる
  end

  private :priv

end

acc = AccTest.new
acc.pub
acc.ppriv
#acc.priv
