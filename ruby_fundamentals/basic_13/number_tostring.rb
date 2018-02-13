def to_string(array)
   array.each_index{|i|array[i]="Dojo" if array[i]<0}
   print array
end
to_string([-1, -3, 2])
