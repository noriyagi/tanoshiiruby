# if���̂Â�
#
# �����FARGV[0] ARGV[1]
#


a = ARGV[0]
b = ARGV[1]

if b > a
  print b,"��",a,"���傫��"
elsif b = a
  print b,"��",a,"�͓�����"
else
  print b,"��",a,"����������"
end

print "\n"
# ���̂܂�unless��

unless a>b
  print "���Ȃ݂�",a,"��",b,"���傫���Ȃ�\n"
end

# ����case ��

tags = ["A","IMG","PRE"]
tags.each do |tagname|
  case tagname
  when "P","A","I","B","BLOCKQUOTE"
    print tagname, " has child.\n"
  when "IMG","BR"
    print tagname, " has no child.\n"
  else
    print tagname, " cannnot be find.\n"
  end
end

#��������N���X�𔻒f���Ă���B
array = ["a",1,nil]
array.each do |item|
  case item
  when String
    puts "item is a String."
  when Numeric
    puts "item is a Numeric."
  else
    puts "item is a Something."
  end
end

#

