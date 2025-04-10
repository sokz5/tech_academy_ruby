numbers = Array.new(5)

p (0...numbers.size)

# 各要素に値を代入
(0...numbers.size).each do |i|
  numbers[i] = i * 2
end

# 配列の要素を表示
numbers.each do |num|
  puts num
end
