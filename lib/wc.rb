#wcのRuby番を作成

ltotal = 0      #line
wtotal = 0      #word
ctotal = 0      #character

ARGV.each do |file|
  begin
    input = open(file)
    l = 0
    w = 0
    c = 0
    while line = input.gets   #line.gets が　false になるまで
      l += 1
      c += line.size
      line.sub!(/^\s+/,"")
      ary = line.split(/\s+/)
      w += ary.size
    end
   input.close
   printf("%8d %8d %8d %s\n", l, w, c, file) #printfで出力を整形
   ltotal += l
   wtotal += w
   ctotal += c
  rescue => ex
    print ex.message, "\n"
  end
end
printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")