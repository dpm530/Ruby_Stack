class Project
   attr_accessor :name, :description, :owner
   attr_reader :tasks

   def initialize(name,description,owner)
      @name=name
      @description=description
      @owner=owner
      @tasks=[]

   end

   def elevator_pitch
      output = "#{@name}, #{@description}"
      puts output
      output
   end


   def add_tasks(task)
      @tasks<<task
   end

end
project1 = Project.new("Project 1", "Description 1","Test")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
project2 = Project.new("Project 2", "Description 2","Test2")
project2.elevator_pitch
