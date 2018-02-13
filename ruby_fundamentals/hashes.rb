hash = {:first_name => "Coding", :last_name => "Dojo"}

#delete(key)
hash.delete(:last_name) #=>"Dojo"

#.empty?
hash.empty? #=>false

#.has_key?(key)
hash.has_key?('first_name') #=>true

#.has_value?(value)
hash.has_value?('Coding') #=>true
