name = ["koyanagi","hayashi","takano","morioka"]
print name[0],"\n"
print name[1],"\n"

print name.size,"\n"
name.each do |n|
  puts n
end

sym = :moe
str = sym.to_s
p str

font_table = {:nomel => "+0",:small => "-1", :big => "+!"}
font_table[:nomal]
font_table[:small]
font_table[:big]

print "<html><title>font size list</title>"
print "<body>\n<p>\n"
font_table = {:nomal => "+0",:small=> "-1",:big => "+1"}
font_table.each do |key,value|
  print '<font size="',value, '">',key,'</font><br>',"\n"
end
print "</p></body></html>\n"

print /Ruby/ =~ "Ruby","\n"
print /Ruby/ =~ "DDDD","\n"
