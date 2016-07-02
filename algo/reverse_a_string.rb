# Complete the method called reverse_a_string that accepts a string as a parameter and 
# returns the reverse. The one caveat: Don't use the reverse method that already
# comes with Ruby!

def reverse_a_string(string)
  input_array = string.chars
  new_array = []
  until input_array == []
    input_array.each do |character|
      if input_array.index(character) == input_array.index(input_array[-1])
        new_array << input_array[input_array.index(character)]
        input_array.delete(input_array[-1])
      end
    end
  end
  reversed_string = new_array.join
end

# Driver code - don't touch anything below this line.
puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end