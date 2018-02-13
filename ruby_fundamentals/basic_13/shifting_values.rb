def shifting_values(array)
   array.rotate(1)
   array[array.length-1]=0

   print array
end

shifting_values([1, 5, 10, 7, -2])
