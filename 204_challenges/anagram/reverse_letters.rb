def reverse_letters(letters)
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
