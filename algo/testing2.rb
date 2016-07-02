def find_longest_word(sentence) # Sets new method, takes argument of string
  words_separated = Hash.new(0) # { New empty hash }
  sentence_array = sentence.split(" ") # turns the input into an array called sentence_array
  sentence_array.each do |word| # starts an each loop for the sentence_array
    words_separated[word] = word.length.to_i # Goes through each word in the array and puts it into the hash, with its value being the word length.
  end
  p words_separated # prints the words_separated hash, to confirm that the hash is working
  words_separated = words_separated.sort_by { |_key, value| value }.reverse # sorts hash by values, descending order, makes array
  p words_separated # prints the new words_separated array
  longest_word = words_separated[0][0] # longest word = whatever's at index 0 of the first array in the words_separated array.
  puts "The longest word is #{longest_word}." # prints the longest word.
end

puts find_longest_word("The longest word in this sentence")
puts find_longest_word("Stranger things have happened.")


