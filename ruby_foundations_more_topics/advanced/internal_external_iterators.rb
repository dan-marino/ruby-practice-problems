fact = Enumerator.new do |y|
  a = 1
  y << a
  loop do
    y << (1..a).inject(&:*)
    a += 1
  end
end

p fact.take(7)

fact.each_with_index do |num, ind|
  p num
  break if ind == 6 
end
