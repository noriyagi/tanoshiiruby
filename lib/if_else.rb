# if文のつづき
#
# 引数：ARGV[0] ARGV[1]
#


a = ARGV[0]
b = ARGV[1]

if b > a
  print b,"は",a,"より大きい"
elsif b = a
  print b,"と",a,"は等しい"
else
  print b,"は",a,"よりも小さい"
end

print "\n"
# そのままunless文

unless a>b
  print "ちなみに",a,"は",b,"より大きくない\n"
end

# 次はcase 文

tags = ["A","IMG","PRE"]
tags.each do |tagname|
  case tagname
  when "P","A","I","B","BLOCKQUOTE"
    print tagname, " has child.\n"
  when "IMG","BR"
    print tagname, " has no child.\n"
  else
    print tagname, " cannnot be find.\n"
  end
end

#所属するクラスを判断している。
array = ["a",1,nil]
array.each do |item|
  case item
  when String
    puts "item is a String."
  when Numeric
    puts "item is a Numeric."
  else
    puts "item is a Something."
  end
end

#

