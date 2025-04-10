class EngineerMixin
  include EmployeeAttributes
  include SoftwareDevelopment

  def initialize(name, department, position, employee_id, programming_language)
    super(name, department, position, employee_id)
    @programming_language = programming_language
  end


end
