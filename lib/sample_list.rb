# timesの練習

4.times do |i|
  print i," いちめんのはな。\n"
end

# for文
# 
# 引数 ARGV[0] ARGV[1]
# 
#


sum = 0
from = ARGV[0].to_i
to   = ARGV[1].to_i
for i in from..to
  sum += i
end
print sum,"\n"

#ちょっと違うfor文

names = ["awk","Perl","Python","Ruby"]

for name in names do
  print name,"\n"
end

#while文

sum = 0
i =1
while i <= 5
  sum += i
  i += 1
  print sum,"\n"
end

sum = 0
i = 1
until sum >=50
  print i," "
  print sum += i,"\n"
  i += 1
end

# each文

names = ["awk","Perl","Python","Ruby"]

names.each do |name|
  print name,"\n"
end