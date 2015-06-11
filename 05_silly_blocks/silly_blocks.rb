def reverser
  str = yield.split()
  str.each do |i|
    i.reverse!
  end
  str.join(" ")
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
   num.times do
     yield
   end
end
