def greater_than(array,y)
   counter=0
   array.each{|x| counter+=1 if x>y}
   puts counter
end

greater_than([1,3,5,7],3)
