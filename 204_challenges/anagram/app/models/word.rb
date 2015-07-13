class Word 

def self.reverse_letters(letters)
#letters to array
  reversed_letters = ""

# reverse letters and return array
  loop = letters.length
  while loop >= 0
	loop -= 1
	reversed_letters = [letters[loop], letters[loop-1]]
  end

  return reversed_letters
end

#require_relative 'reverse_letters'

def self.find_anagram(letters)
	letters = letters.split("")
	
	anagram = []
	
	letters.each_with_index do |letter, index|
	remaining_letters = letters.select {|l| l != letter}
	anagram << letter + remaining_letters.join
	
	anagram << letter + reverse_letters(remaining_letters).join
	end
    anagram
end

end