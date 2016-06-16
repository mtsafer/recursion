def merge_sort(array)
	return array if array.length == 1
	one = merge_sort(array.slice!(0..(array.length-1)/2))
	two = merge_sort(array)
	merge(one, two)
end

def merge(left, right)
	result = []
	until left.empty? || right.empty?
		if left[0] > right[0]
		  result << right.delete_at(0)
		else
			result << left.delete_at(0)
		end
	end
	until left.empty?
		result << left.delete_at(0)
	end
	until right.empty?
		result << right.delete_at(0)
	end
	result
end

a = [1,2,4,3,7,5,9,7,1,4,6,0]

puts (merge_sort a).inspect
#puts "merge_sort #{b}:\n #{merge_sort b}"