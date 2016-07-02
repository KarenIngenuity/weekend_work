# Complete the method called reverse_a_string that accepts a string as a parameter and 
# returns the reverse. The one caveat: Don't use the reverse method that already
# comes with Ruby!

def reverse_a_string(string)
  input_array = string.chars
  new_array = []
  until input_array == []
    input_array.each do |character|
      if character == input_array.last
        new_array << character
        input_array.delete(input_array.last)
      end
    end
  end
  reversed_string = new_array.join
end

puts reverse_a_string("Hello")
puts reverse_a_string("grass")

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