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

	def lucky13?(array)
		array.each do |element|
			if element == 1 || element == 3
				return false
			else
				return true
			end
		end
	end

	def repeat_separator(word, separator, count)
		string = ""
		(2..count).each do |n|
			string += word + separator
		end
		string += word 
		string
	end

	def same_ends?(array, range)
		string1 = ""
		string2 = ""
		(0...range).each do |n|
			string1 += array[n].to_s
		end
		(array.length - range...array.length).each do |n|
			string2 += array[n].to_s
		end
		string1 == string2
	end
	
end