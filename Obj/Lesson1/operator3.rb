score = 59

# scoreが40以上、かつ50以下
puts "scoreが40以上、かつ50以下：#{score >= 40 && score <= 50}"

# scoreが40以上、または50以下
puts "scoreが40以上、または50以下：#{score >= 40 || score <= 50}"

# scoreが60以上ではない
puts "scoreが60以上ではない：#{!(score >= 60)}"
