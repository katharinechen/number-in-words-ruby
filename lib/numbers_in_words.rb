def numbers_in_words(number)

	number_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
					4 => "four", 5 => "five", 6 => "six", 7 => "seven",
					8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
					12 => "twelve", 13 => "thirteen", 14 => "fourteen",
					15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
					18 => "eighteen", 19 => "nineteen", 20 => "twenty",
					30 => "thirty", 40 => "forty", 50 => "fifty", 
					60 => "sixty", 70 => "seventy", 80 => "eighty", 
					90 => "ninety"
				}

	scale_hash = {  1_000_000_000_000 => "trillion", 
					1_000_000_000 => "billion", 
					1_000_000 => "million", 
					1_000 => "thousand", 
					100 => "hundred" } 

	if number > 100 
		scale_hash.each do |key, value| 
			if number/key > 0
				return "#{numbers_in_words(number/key)} #{value} #{numbers_in_words(number%key)}" if number%key != 0 
				return "#{numbers_in_words(number/key)} #{value}"
			end  
		end  
	end

	if number < 100 && (number_hash.has_key?(number) == false )
		return "#{number_hash[number/10 * 10]} " + numbers_in_words(number%10) if number%10 != 0 
		return number_hash[number/10 * 10]	
	end  

	return number_hash[number] if number_hash.has_key?(number) 
end