<h1>Numbers in Words, in Ruby</h1>
<p>Written by Katharine Chen</p>

Create a method that translates numbers in numeric form into written words. For example, it would translate 384 into "three hundred eighty four".

Make it work up to 1 trillion. 


I made my first attempt writing this with words, but it seems overly complicated, repeatitive, and vebrose 

when (1000000000000..999999999999999).include?(number)
		if number%1000000000000 == 0
			return numbers_in_words(number/1000000000000) + " trillion"
		else
			return numbers_in_words(number/1000000000000) + " trillion " + numbers_in_words(number%1000000000000)
		end 

seemed to verbose 