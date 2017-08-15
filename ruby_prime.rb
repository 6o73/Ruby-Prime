# ruby prime
# get the first n primes
# no, this is not the Sieve of Eratosthenes, just brute force division 

print "Enter the number of prime numbers to list from 2 : "
get_num = gets.chomp

# Start the prime list with just the number 2, then we skip all even numbers after it
primes = [2]
composite = []
x = 2

until primes.size >= get_num.to_i
	# Clear the array for each iteration
	composite.clear 
	x += 1

	# Remove all even numbers
	next if  (x % 2) == 0

	# Loop over the current list of primes to check if number is composite
	for number in primes
		#puts "#{x} #{number}"
		if (x.to_f % number.to_f) == 0
			composite.push(number)
		end
	end

	# Skip the number if composite 
	#puts composite.size
	next if composite.size > 0

	# Add the number to the prime list if not composite
	primes.push(x)
end

puts primes.join(", ")

