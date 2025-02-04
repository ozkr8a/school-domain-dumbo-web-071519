# code here!

require "pry"

class School
  
  attr_reader :student, :roster, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  
  end
  
  def add_student(student, grade)
    
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
    
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |k, v|
      #binding.pry
      @roster[k] = v.sort
    end
  end
  
end