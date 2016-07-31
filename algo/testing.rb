def reverse_a_string(string)
  input_array = string.chars
  new_array = []
  until input_array == []
    input_array.each do |character|
      if character == input_array.last
        new_array << character
        input_array.delete_at(-1)
      end
    end
  end
  reversed_string = new_array.join
  puts reversed_string
end

reverse_a_string("Hello")
