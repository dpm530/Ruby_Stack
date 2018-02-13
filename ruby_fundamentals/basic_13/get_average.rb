def average(array)
   count=0
   array.each do |x|
      count+=x
   end
   puts count/array.length
end

average([2,10,3])         
