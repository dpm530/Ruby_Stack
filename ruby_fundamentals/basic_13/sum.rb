def sum
   counter=0
   (0..255).each do |x|
      counter+=x
      puts "Num: #{x}, Count:#{counter}"


   end
end
sum
