class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    # if @roster.include?(grade)
    #   @roster[grade] << student_name
    # else
    #   @roster[grade] = []
    #   @roster[grade] << student_name
    # end
    
    @roster[grade] ? (@roster[grade] << student_name) : @roster[grade] = [] 
    #@roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student_name|
      student_name.sort!
    end
  end
  
end