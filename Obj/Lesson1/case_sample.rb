score = 100 # 成績

case score / 10
when 10
  puts "満点です！"
when 9, 8
  puts "よくできました！"
when 7, 6
  puts "合格です！"
else
  puts "赤点です。。。"
end
