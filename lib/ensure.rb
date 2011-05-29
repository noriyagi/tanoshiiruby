#ensure

def copy(from, to)
  src = open(from)
  begin
    dst open(to, "w")
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
    print "ensure!!"
  end
end
