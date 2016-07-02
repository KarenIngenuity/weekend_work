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
  puts reversed_string
end

reverse_a_string("Hello")
