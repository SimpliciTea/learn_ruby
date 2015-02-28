def translate(string)
	vowels = "aeiou".split('')
	string_split = string.split(' ')
	output = []
	
	string_split.each do |word|
		chars = word.split('')

		# shifts first char to end of each word until first char is a vowel	
		until vowels.any? { |letter| chars[0] == letter }
			char = chars.shift
			# hackily checks for 'qu' case and treats as single phoneme
			if char == 'q'
				chars << char
				char = chars.shift
			end
			chars << char
		end

		word = chars.join + 'ay'
		output << word
	end

	return output.join(' ')
end