def odd
   answer=[]
   (1..255).each do |x|
      answer<< x if x%2!=0
   end
   return answer
end
print odd
