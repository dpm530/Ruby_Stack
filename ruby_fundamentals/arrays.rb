a=['matz','guido','dojo','choi','john']
b=[5,6,9,3,1,2,4,7,8,10]

# .at or .fetch
a.at(1) #=>'guido'
b.fetch(3) #=>3

#delete
a.delete(2) #=> ['matz', 'guido', 'choi', 'john']
b.delete(4) #=> [5,6,9,3,2,4,7,8,10]

#reverse
a.reverse #=> ['john','choi','dojo','guido','matz']
b.reverse #=> [10,8,7,4,2,1,3,9,6,5]

#length
a.length #=>5
b.length #=>10

#sort
a.sort #=>["choi", "dojo", "guido", "john", "matz"]
b.sort #=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#slice
a.slice(0,1) #=>['matz','guido']
b.slice(1,3) #=>[6,9,3]

#shuffle
a.shuffle #=>["guido", "choi", "matz", "john", "dojo"]
b.shuffle #=>[3, 9, 4, 1, 6, 10, 5, 7, 2, 8]

#join
a.join(" ") #=> 'matz guido dojo choi john'
b.join(',') #=>'5,6,9,3,1,2,4,7,8,10'

#insert
a.insert(0,'bootcamp') #=>['bootcamp','matz','guido','dojo','choi','john']
b.insert(0,0) #=>[0,5,6,9,3,1,2,4,7,8,10]

#values_at
a.values_at(1,2) #=>['guido','dojo']
b.values_at(1,5) #=>[6,2]
