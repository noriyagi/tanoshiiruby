#read_file

filename = ARGV[0]
file = open(filename)
text = file.read
print text
file.close

text2 = File.read(filename)
print text2

print File.read(ARGV[0])

file = open(filename)
i = 0
while text3 = file.gets
  print text3
  print i = i+1,"\n"
end
file.close
