# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
def pythagorean_triplet max
	triplets = []
	(1..max).each do |i|
		((i + 1)..max).each do |j|
			sum = (i ** 2 + j ** 2)
			next if i + j > 999
			((j + 1)..max).each do |k|
				triplets << [i, j, k] if (sum == k ** 2)
			end
		end
	end
	target = nil
	triplets.each do |triplet| 
		total = 0
		triplet.each { |v| total += v }
		if total == 1000
			target = triplet
			break
		end
	end
	product = 1
	target.each { |t| product *= t }
	return product
end

puts pythagorean_triplet(1000)