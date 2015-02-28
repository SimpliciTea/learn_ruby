def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, a = 1)
	output = string.dup

	if a < 3
		1.times do
			output << (" "+string)
		end
	else 
		(a-1).times do
			output << (" "+string)
		end
	end

	output
end

def start_of_word(word, a)
	word[0..a-1]
end

def first_word(word)
	output = word.split(' ')
	output[0]
end

def titleize(title)
	stop_words = ["the", "and", "over"]
	capped = []

	capped = title.split.map { |word| 
		if !(stop_words.include? word)
			word.capitalize
		else
			word
		end
		}

	capped[0] = capped[0].capitalize
	capped.join(' ')

end