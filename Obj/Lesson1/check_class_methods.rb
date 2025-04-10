# 色々なエラーを出してみる

# 1. SyntaxError: 構文エラー
begin
    eval("1 +") # 不完全な式でSyntaxErrorを発生させる
else
    puts "SyntaxError: No error"
    puts "error class: No error"
rescue SyntaxError => e
    puts "SyntaxError: #{e.message}"
    puts "error class: #{e.class}"
end

# 2. ArgumentError: 引数エラー
begin
    puts "★" * 10 + " 2: 引数エラー " + "★" * 10
    def greet(name)
        puts "Hello, #{name}!"
    end
    greet # 引数を渡さない

rescue ArgumentError => e
    puts "ArgumentError: #{e.message}"
    puts "error class: #{e.class}"
end

# 3. NoMethodError: メソッドが見つからないエラー
begin
    puts "★" * 10 + " 3: NoMethodError " + "★" * 10
    puts "Hello".non_existent_method # 存在しないメソッドを呼び出す
rescue NoMethodError => e
    puts "NoMethodError: #{e.message}"
    puts "error class: #{e.class}"
end

# 4. TypeError: 型エラー
begin
    puts "★" * 10 + " 4: TypeError " + "★" * 10
    puts "Hello" + 123 # 文字列と整数を足そうとする
rescue TypeError => e
    puts "TypeError: #{e.message}"
    puts "error class: #{e.class}"
end

# 5. NameError: 名前エラー
begin
    puts "★" * 10 + " 5: NameError " + "★" * 10
    puts undefined_variable # 定義されていない変数を参照する
rescue NameError => e
    puts "NameError: #{e.message}"
    puts "error class: #{e.class}"
end

# 6. ZeroDivisionError: ゼロ除算エラー
begin
    puts "★" * 10 + " 6: ZeroDivisionError " + "★" * 10
    puts 1 / 0 # ゼロで割る
rescue ZeroDivisionError => e
    puts "ZeroDivisionError: #{e.message}"
    puts "error class: #{e.class}"
end

# 7. IOError: 入出力エラー
begin
    puts "★" * 10 + " 7: IOError " + "★" * 10
    File.open("non_existent_file.txt") # 存在しないファイルを開こうとする
rescue IOError => e
    puts "IOError: #{e.message}"
    puts "error class: #{e.class}"
end


# 8. RuntimeError: ランタイムエラー
begin
    puts "★" * 10 + " 8: RuntimeError " + "★" * 10
    raise "This is a runtime error!" # ランタイムエラーを発生させる
rescue RuntimeError => e
    puts "RuntimeError: #{e.message}"
    puts "error class: #{e.class}"
end
