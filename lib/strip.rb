#‹ó”’s‚ğíœ‚·‚é

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