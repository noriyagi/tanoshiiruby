#proc1.rb

pr = Proc.new do
	p "a"
end
p "b"
pr.call()

def foo(a, b, &block)
	p "begin block"
	foo2(a, b, &block)
	p "end block"
end

def foo2(a, b, &block)
	p "begin block2"
	block.call(a, b)
	p "end block2"
end

foo("a1", "b1") do |a, b|
	p a
	p b
end
