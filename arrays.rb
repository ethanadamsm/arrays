module Arrays
	
	def middles(array1, array2)
		[array1[1], array2[1]]
	end

	def max(array)
		max = 0
		array.each do |element|
			if element > max 
				max = element
			end
		end
		max
	end	
	
end