#List 1.4

x=10
y=20
z=30

area = (x*y+y*z+z*x)*2,"\n"
volume = x*y*z,"\n"

print "area=",area,"\n","volume=",volume,"\n"

#

p(2==2)
p(1>9)
p(1<9)

#List 1.6 Bigger Smaller

a=20
if a >= 10 then
  print "bigger\n"
end

if a<= 9 then
  print "smaller\n"
else
  print "False\n"
end

#
i=1
while i <= 10
  print i,"\n"
  i=i+1
end

10.times do
  print "All work and no play makes Jack a dull boy.\n"
end

#method no tukurikata

def hello
  print "Hello,Ruby.\n"
end

hello()

require "date"

days = Date.today
puts(days)

