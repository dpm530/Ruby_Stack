def negatives(array)
   array.each_index{|i| array[i]=0 if array[i]<0}
   print array
end

negatives([1, 5, 10, -2])
