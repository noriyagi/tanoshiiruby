#空白行を削除する

file = open(ARGV[0])
while text = file.gets
  if /^\s*$/ =~ text
    next
  elsif /^#/ =~ text
    next
  else
    print text
  end
end