# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

def largest_prime_factor number
	# find all factors
	# too slow:
	factors = []
	(1..number).each do |i|
		factors << i if number % i == 0
	end

	# find primes among factors
	# take largest
end

puts largest_prime_factor(13195)