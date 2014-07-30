require 'rspec'
require 'numbers_in_words'

describe 'numbers_in_words' do

	it "should return the number zero" do
		expect(numbers_in_words(0)). to eq("zero")
	end

	it "should return numbers up to twenty" do
		expect(numbers_in_words(8)).to eq("eight")
	end

	it "should return numbers under 100" do
		expect(numbers_in_words(21)).to eq("twenty one")
	end

	it "should return numbers under 100" do
		expect(numbers_in_words(30)).to eq("thirty")
	end

	it "should return numbers under 1,000" do
		expect(numbers_in_words(300)).to eq("three hundred")
	end

	it "should return numbers under 1,000" do
		expect(numbers_in_words(399)).to eq("three hundred ninety nine")
	end

	it "should return numbers under 1,000" do
		expect(numbers_in_words(302)).to eq("three hundred two")
	end

	# it "should return numbers under 100,000" do
	# 	expect(numbers_in_words(341999)).to eq("three hundred forty one thousand nine hundred ninety nine")
	# end

	# it "should return numbers under 100,000,000" do
	# 	expect(numbers_in_words(123456789)).to eq("one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine")
	# end

	# it "should return numbers under 100,000,000,000" do
	# 	expect(numbers_in_words(123456789123)).to eq("one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand one hundred twenty three")
	# end

	# it "should return numbers under 100,000,000,000,000" do
	# 	expect(numbers_in_words(123456789123456)).to eq("one hundred twenty three trillion four hundred fifty six billion seven hundred eighty nine million one hundred twenty three thousand four hundred fifty six")
	# end

end

