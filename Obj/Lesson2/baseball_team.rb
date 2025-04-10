class BaseballTeam
  # getter / setter
  attr_accessor :name, :win, :lose, :draw

  # initializeメソッド
  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

  # 勝率を計算するメソッド
  def get_rate()
    begin
      return @win / (@win + @lose).to_f()
    rescue ZeroDivisionError => e
      return raise ArgumentError, "勝率を計算できません。"
    end
  end

  # 勝敗情報をコンソールに出力するメソッド
  def report()
    begin
      printf("%-10s %5d %5d %7.3f\n", @name, @win, @lose, get_rate().round(3))
    rescue ArgumentError => e
      puts "引数エラー: #{e.message}"
    end
  end
end

team_archers = BaseballTeam.new("Archers", 77, 64, 2)
team_meteors = BaseballTeam.new("Meteors", 71, 69, 3)
team_cheetahs = BaseballTeam.new("Cheetahs", 69, 68, 6)
team_sharks = BaseballTeam.new("Sharks", 70, 70, 3)
team_pythons = BaseballTeam.new("Pythons", 68, 73, 2)
team_owls = BaseballTeam.new("Owls", 59, 82, 2)

printf("%-10s %5s %5s %7s\n", "team", 'win', 'lose', 'rate')
team_archers.report()
team_meteors.report()
team_cheetahs.report()
team_sharks.report()
team_pythons.report()
team_owls.report()
