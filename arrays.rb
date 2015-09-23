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

	def starry(string)
		string_array = []
		string = string.downcase
		(0...string.length).each do |n|
			if string[n] == "*"
				string_array.push(string[n-1] + string[n] + string[n + 1])
			end
		end
		(0...string_array.length).each do |n|
			if(string_array[n][0] != string_array[n][2])
				return false
			end
		end
		true
	end

	def plus_it(word, token)
		string_final = "+"*word.length
		(0...word.length).each do |n|
			if n + token.length > word.length
				break
			end
			if word[n..n + (token.length - 1)] == token
				string_final[n..n + token.length - 1] = token	
			end
		end
		string_final
	end

	def zero_front(array)
		array_nums = []
		array_final = []
		zeros = 0
		(0...array.length).each do |n|
			if array[n] != 0
				array_nums.push(array[n])
			else
				zeros += 1
			end
		end
		if zeros > 0
			(0...zeros).each do |n|
				array_final.push(0)
			end
		end
		array_final += array_nums
	end

	def ten_run(array)
		final_array = []
		current = 1
		array.each do |element|
			if element % 10 == 0
				current = element
			end
			if current % 10 == 0 
				final_array.push(current)
			else
				final_array.push(element)
			end
		end
		final_array
	end

end