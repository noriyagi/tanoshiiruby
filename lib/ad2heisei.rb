# seireki → heisei
# ARGV[0] : kibounenn(seireki)
#
#
ad = ARGV[0].to_i
heisei = ad-1988
print ARGV[0]," is ","H",heisei,"\n"

# おまけ

p "".empty?
p "aaa".empty?

p /Ruby/i =~ "RUBY"
p /Ruby/  =~ "aaa"