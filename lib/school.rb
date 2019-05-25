class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
    
    # using the or equals operator
    # roster[grade] ||= []
    # roster[grade] << student_name
    
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    # @roster.each do |grade, students|
    #   students.sort!
    # end
    
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  
  end
  
end