require "pry"

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    students = []
    @roster.select do |year, name|
      if year == grade
        students << name
      end
    end
    students.flatten
  end

  def sort
    @roster[9].sort!
    @roster.sort.to_h
  end

end
