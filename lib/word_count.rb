#13.8 word_count
count = Hash.new(0)
#�P��̏W�v
while line = gets
  words = line.split
  words.each do |word|
    count[word] += 1
  end
end

#����
count.sort{|a,b|
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end