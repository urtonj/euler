
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome max
	palindromes = []
	(1..max).each do |i|
		(1..max).each do |j|
			product = i * j
			length = product.to_s.size / 2
			palindromes << product if product.to_s[0..(length - 1)].reverse == product.to_s[-length..-1]
		end
	end
	palindromes.max
end

puts palindrome(999)