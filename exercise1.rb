class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display
    p 'Detail:'
    p "- name: #{@name}"
    p "- age: #{@age}"
  end
end
p = Person.new('Tomas Wild', 37)
p.display

class Student < Person
  attr_accessor :section

  def initialize(name, age, section)
    super(name, age)
    @section = section
  end

  def display
    p 'Detail:'
    p "- name: #{@name}"
    p "- age: #{@age}"
    p "- section: #{@section}"
  end
end
student = Student.new('Albert', 23, 'Mathematics')
student.display
