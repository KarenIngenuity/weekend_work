def reverse_a_string(string)
  input_array = string.chars
  p input_array
  puts
  puts
  new_array = []
  until input_array == []
    input_array.each do |character|
      if input_array.index(character) == input_array.index(input_array[-1])
        new_array << character
        p new_array
        puts
        puts
        input_array.delete(input_array[-1])
        p input_array
      end
    end
  end
  puts
  puts
  p new_array
end

reverse_a_string("Hello")

reverse_a_string("spaghetti")

reverse_a_string("James")
