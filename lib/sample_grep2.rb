#sample grep2
#[pattern] [filename]
#
#
#

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10
matches= 0

file = open(filename)
while text = file.gets
  if matches >=max_matches
    break
  end
  if pattern =~ text
    print text
    matches += 1
  end
end
file.close