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



	# if number > 100 
	# 	scale_hash.each do |key, value| 
	# 		if number/key > 0
	# 			return "#{number_hash[number/key]} #{value} #{numbers_in_words(number%key)}" if number%key != 0 
	# 			return "#{number_hash[number/key]} #{value}"
	# 		end  
	# 	end  
	# end


	if number > 100 
		if number/100 > 0 
			return "#{number_hash[number/100]} hundred #{numbers_in_words(number%100)}" if number%100 != 0 
			return "#{number_hash[number/100]} hundred"
		end
	end 

	if number < 100 && (number_hash.has_key?(number) == false )
		return "#{number_hash[number/10 * 10]} " + numbers_in_words(number%10) if number%10 != 0 
		return number_hash[number/10 * 10]	
	end  

	return number_hash[number] if number_hash.has_key?(number) 
end


puts numbers_in_words(425)















# def numbers_in_words(number)

# 	number_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
# 					4 => "four", 5 => "five", 6 => "six", 7 => "seven",
# 					8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
# 					12 => "twelve", 13 => "thirteen", 14 => "fourteen",
# 					15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
# 					18 => "eighteen", 19 => "nineteen", 20 => "twenty",
# 					30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
# 					70 => "seventy", 80 => "eighty", 90 => "ninety"
# 	}

# 	case
# 	when (1000000000000..999999999999999).include?(number)
# 		if number%1000000000000 == 0
# 			return numbers_in_words(number/1000000000000) + " trillion"
# 		else
# 			return numbers_in_words(number/1000000000000) + " trillion " + numbers_in_words(number%1000000000000)
# 		end
# 	when (1000000000..999999999999).include?(number)
# 		if number%1000000000 == 0
# 			return numbers_in_words(number/1000000000) + " billion"
# 		else
# 			return numbers_in_words(number/1000000000) + " billion " + numbers_in_words(number%1000000000)
# 		end
# 	when (1000000..999999999).include?(number)
# 		if number%1000000 == 0
# 			return numbers_in_words(number/1000000) + "million "
# 		else
# 			return numbers_in_words(number/1000000) + " million " + numbers_in_words(number%1000000)
# 		end
# 	when (1000..999999).include?(number)
# 		if number%1000 == 0
# 			return numbers_in_words(number/1000) + " thousand"
# 		else
# 			return numbers_in_words(number/1000) + " thousand " + numbers_in_words(number%1000)
# 		end
# 	when (100..999).include?(number)
# 		if number%100 == 0
# 			return number_hash[number/100] + " hundred"
# 		else
# 			return number_hash[number/100] + " hundred " + numbers_in_words(number%100)
# 		end
# 	when (21..99).include?(number)
# 		if number%10 == 0
# 			return number_hash[number/10 * 10]
# 		else
# 			return number_hash[number/10 * 10] + " " + numbers_in_words(number%10)
# 		end
# 	when (0..20).include?(number)
# 		return number_hash[number]
# 	end

# end
