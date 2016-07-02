def reverse_a_string(string)
  string_array = string.chars
  p string_array
  string_hash = Hash.new
  string_array.each do |character|
    string_hash[character] = string_array.index(character)
  end
  p string_hash
  string_hash = string_hash.sort_by{ |_key, value| value }.reverse.to_h
  puts string_hash.keys
end

reverse_a_string("Hello")