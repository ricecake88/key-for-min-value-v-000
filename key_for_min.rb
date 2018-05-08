# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
 values = name_hash.each.collect {|key, value| value}
 name_min = nil
 min = values[0]
 (1..values.length-1).each do |i|
   if values[i] < min
     min = values[i]
   end
  end
  
  name_hash.each do |key, value|
    if value == min
      name_min = key
      break
    end
  end
  
  name_min
end

name = {"chair": 25, "table": 85, "mattress":450, "testing":4, "testing2": 10}
puts key_for_min_value(name)
