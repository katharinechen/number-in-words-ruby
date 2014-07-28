require 'rspec'
require 'numbers_in_words'

describe 'numbers_in_words' do  

	# it "should return the number zero" do 
	# 	expect(numbers_in_words(0)). to eq("zero")
	# end

	it "should return numbers up to twenty" do 
		expect(numbers_in_words(8)).to eq("eight")
	end

	it "should return numbers under 100" do 
		expect(numbers_in_words(21)).to eq("twenty one")
	end

	it "should return numbers under 1000" do 
		expect(numbers_in_words(399)).to eq("three hundred ninety nine")
	end
end

