class Engineer < Employee
  attr_accessor :programming_language

  def initialize(name, department, position, employee_id, programming_language)
    # スーパークラスのinitializeメソッドを呼び出す
    super(name, department, position, employee_id)
    @programming_language = programming_language
  end

  def develop_software
    puts "ソフトウェアを開発します。名前：#{@name}、プログラミング言語：#{@programming_language}"
  end

  # join_meetingメソッドをオーバーライド
  def join_meeting
    super
    puts "→技術的な準備を行い、上記の会議に参加します。名前：#{@name}"
  end
end
