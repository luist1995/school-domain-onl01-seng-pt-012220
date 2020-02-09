class School

attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = Hash.new {|h, k| h[k] = []}
end

def roster
  @roster
end

def add_student (name, grade)
  self.roster[grade] << name
  @roster.has_key?(grade) ? roster[grade] << name : roster[grade] 
end
  
end