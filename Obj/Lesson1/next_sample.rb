(1..20).each do |i|
  next if i.odd?  # i が奇数のとき、この回の繰り返しをスキップ
  puts i
end
