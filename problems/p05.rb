# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
def smallest_multiple max
	continue = true; count = 1; value = 0
	while continue 
		skip = false
		value = max * count
		puts value
		max.downto(1).each do |i|
			next if skip
			skip = true unless value % i == 0
		end
		count += 1
		next if skip
		continue = false
	end
	value
end

puts smallest_multiple(20)