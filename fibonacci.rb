
#Write a method #fibs which takes a number and returns
#that many members of the fibonacci sequence.
#Use iteration for this solution.
def fibs n
	return 0 if n == 0
	fib = [0,1]
	(0..n-3).each { |num| fib << fib[-2] + fib[-1] }
	return fib
end
#Now write another method #fibs_rec which solves the same problem recursively.
#This can be done in just 3 lines (or 1 if you're crazy, but don't consider
#either of these lengths a requirement... just get it done).
def fibs_rec( n, fib = [0,1])
	return 0 if n == 0
	if fib[n].nil?
		fib << fib[-2] + fib[-1]
		fibs_rec( n, fib )
	else
		return fib[0..n-1]
	end
end

def recursive n
	n <= 1 ? n : recursive(n-1) + recursive(n-2)
end

puts "Warmup: #{recursive 5}"
puts "iterative: #{fibs 5}"
puts "recursive: #{fibs_rec 5}"