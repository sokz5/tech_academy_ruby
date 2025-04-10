class Employee
  attr_accessor :name, :department, :position, :employee_id

  def initialize(name, department, position, employee_id)
    @name = name
    @department = department
    @position = position
    @employee_id = employee_id
  end

  def report(times = 1)
    puts "#{times}回目の報告をします。役職: #{@position}、名前: #{@name}"
  end

  def join_meeting
    @department.meeting
    puts "→上記の会議に参加します。部署：#{@department.name} 名前：#{@name}"
  end
end
