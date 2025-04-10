# ## 愚直に実装した例

# prime_numbers = []

# (1..100).each do |num|
#   next if (num == 1) # 1はスキップ

#   # ある数値が、すでにprime_numbersに含まれている数で割れなければ素数
#   is_prime = true
#   prime_numbers.each do |prime|
#     if (num % prime == 0)
#       is_prime = false
#       break
#     end
#   end

#   # すでにprime_numbersに含まれている数で割れなければ素数
#   if (is_prime)
#     prime_numbers << num
#   end
# end

# prime_numbers.each do |num|
#   print "#{num}, "
# end

def check_prime(num)
  if num == 1
    return false
  elsif num == 2
    return true
  else
    (2..num-1).each do |index|
      if num % index == 0
        return false
      end
    end
    return true
  end
end

prime_numbers = []
(1..100).each do |num|
  if check_prime(num)
    prime_numbers << num
  end
end

prime_numbers.each do |num|
  print "#{num}, "
end
