puts "ファイルのイテレータ"
fi = File.open("sample.txt")
fi.each_line do |line|
  print line
end
fi.close

puts "ファイルのイテレータ（後処理省略）"
File.open("sample.txt") do |f|
	f.each_line do |line|
		print line
	end
end

