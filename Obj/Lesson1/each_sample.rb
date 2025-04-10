(1..10).each do |i|
  puts i
end

numbers = [2, 4, 6, 8, 10]

numbers.each do |num|
  puts num
end

numbers.each_with_index do |num, i|
  puts "#{i}: #{num}"
end
