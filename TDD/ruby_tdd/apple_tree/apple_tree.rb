class AppleTree
   attr_accessor :age
   attr_reader :height,:apple_count

   def initialize
      @age=0
      @height=10
      @apple_count=0
   end

   def year_gone_by
      @age += 1
      @height += ten_percent(@height)
      @apple_count += 2 if (4..10).include?(@age)
   end

   def pick_apples
      @apple_count=0
   end

   def ten_percent(h)
      (h*0.1).round(2)
   end


end
