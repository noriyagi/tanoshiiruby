# times‚Ì—ûK

4.times do |i|
  print i," ‚¢‚¿‚ß‚ñ‚Ì‚Í‚ÈB\n"
end

# for•¶
# 
# ˆø” ARGV[0] ARGV[1]
# 
#


sum = 0
from = ARGV[0].to_i
to   = ARGV[1].to_i
for i in from..to
  sum += i
end
print sum,"\n"

#‚¿‚å‚Á‚Æˆá‚¤for•¶

names = ["awk","Perl","Python","Ruby"]

for name in names do
  print name,"\n"
end

#while•¶

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

# each•¶

names = ["awk","Perl","Python","Ruby"]

names.each do |name|
  print name,"\n"
end