require_relative 'reverse_letters'

def find_anagram(letters)
	letters = letters.split("")
	
	anagram = []
	
	letters.each_with_index do |letter, index|
	remaining_letters = letters.select {|l| l != letter}
	anagram << letter + remaining_letters.join
	
	anagram << letter + reverse_letters(remaining_letters).join
	end
    anagram
end

