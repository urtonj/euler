# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_diff count
	sum_of_squares = 0; sum_squared = 0
	(1..count).each do |i|
		sum_of_squares += i ** 2
		sum_squared += i
	end
	sum_squared ** 2 - sum_of_squares
end

puts sum_square_diff(100)