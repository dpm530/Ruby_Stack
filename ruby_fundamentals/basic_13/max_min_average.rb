def max_min_average(array)
   answer={max:array.max,min:array.min,average:array.inject(:+)/array.length}
   print answer
end
max_min_average([1, 5, 10, -2])
