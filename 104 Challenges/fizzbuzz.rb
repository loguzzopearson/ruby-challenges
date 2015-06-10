(1..100).each do |number|
	if number % 3 != 0 && number % 5 != 0
		puts "#{number}"
		next
	end	
	if number % 3 == 0 && number % 5 == 0
		puts "FizzBuzz"
		next
	end
	if number % 3 == 0
		puts "Fizz"
		next
	end 
	if number % 5 == 0
		puts "Buzz"
		next
	end
end
