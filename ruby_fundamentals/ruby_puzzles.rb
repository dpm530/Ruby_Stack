array=[3,5,1,2,7,9,8,13,25,32]

puts array.inject(:+)

puts array.reject{|x|x<10}
--------------------------------------------------------------------------------
array2=['john','KB','Oliver','Cory','Matthew','Christopher']

array2.shuffle.each{|x|ptint x}

puts array2.select{|x|x.length>5}
--------------------------------------------------------------------------------
vowels=%w(a e i o u)

alphabet=%w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

shuffled=alphabet.shuffle

puts shuffled.last

puts shuffled.first

if vowels.include?(shuffled.first)
   puts "This is a vowel"
end
--------------------------------------------------------------------------------
random_array=10.times.map{Random.rand(55..100)}
sorted=random_array.sort
sorted.min
sorted.max
--------------------------------------------------------------------------------
string=""
5.times{string<< (65+rand(26)).chr}
--------------------------------------------------------------------------------
generated_array=[]
10.times do
   string=""
   5.times{string<<(65+rand(26)).chr}
   generated_array<<string
end 
