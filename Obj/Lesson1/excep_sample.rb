puts "処理開始"

begin
  # ここに例外が発生する可能性のあるコードを書きます
  puts "割り算開始"
  a = 10 / 0  # 0で割るため ZeroDivisionError が発生
  puts a
rescue ZeroDivisionError => e
  # ZeroDivisionError が発生した場合の処理を書きます
  puts "ZeroDivisionErrorが発生: #{e.message}"
ensure
  # 例外の有無にかかわらず実行されるコード（オプション）
  puts "割り算終了"
end

puts "処理終了"
