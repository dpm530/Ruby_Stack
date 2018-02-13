class MathDojo
   attr_accessor :answer
   def initialize()
      @answer=0
   end

   def add(*numbers)
      @answer+=numbers.flatten.reduce(:+)
      return self
   end

   def subtract(*numbers)
      @answer-=numbers.flatten.inject(:+)
      return self
   end

   def result()
      return @answer
   end


end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1
puts challenge2
