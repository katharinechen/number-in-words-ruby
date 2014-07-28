def numbers_in_words(number)

	number_hash = { 1 => "one", 2 => "two", 3 => "three", 
					4 => "four", 5 => "five", 6 => "six", 7 => "seven", 
					8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 
					12 => "twelve", 13 => "thirteen", 14 => "fourteen", 
					15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 
					18 => "eighteen", 19 => "nineteen", 20 => "twenty", 
					30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 
					70 => "seventy", 80 => "eighty", 90 => "ninety"
	}
	
	case
	when (1000000000000..999999999999999).include?(number)
		return numbers_in_words(number/1000000000000) + " trillion " + numbers_in_words(number%1000000000000)
	when (1000000000..999999999999).include?(number)
		return numbers_in_words(number/1000000000) + " billion " + numbers_in_words(number%1000000000)
	when (1000000..999999999).include?(number)
		return numbers_in_words(number/1000000) + " million " + numbers_in_words(number%1000000)
	when (1000..999999).include?(number)
		return numbers_in_words(number/1000) + " thousand " + numbers_in_words(number%1000)
	when (100..999).include?(number)
		return number_hash[number/100] + " hundred " + numbers_in_words(number%100)
	when (21..99).include?(number)
		return number_hash[number/10 * 10] + " " + numbers_in_words(number%10)
	when (1..20).include?(number)
		return number_hash[number] 
	end 

	return result

	# if result[-1..-4] == "zero" && result[0] != "z"
	# 	# return result.delete("zero") 
	# 	return "hello"
	# else
	# 	return "zero"
	# end 

end

puts numbers_in_words(123456) 