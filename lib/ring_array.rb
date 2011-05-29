class RingArray < Array
  def [](i)
    idx = i%size
    super(idx)
  end
end

eto = RingArray["a","b","c","d"]

p eto[1]
p eto[4]
p eto[9]
p eto[-1]
