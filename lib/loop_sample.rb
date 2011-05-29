#åJÇËï‘Çµêßå‰ï∂ÇÃÇ†ÇÍÇ±ÇÍ

print "ex_break\n"
i = 0
names = ["Perl","Python","Ruby","Scheme"]
names.each do |lang|
#["Perl","Python","Ruby","Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [ i,lang ]
end

print "\nex_next\n"
i = 0
names.each do |lang|
  i += 1
  if i == 3
    next
  end
  p [ i,lang ]
end

print "\nex_redo\n"
i = 0
names.each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [ i,lang ]
end
