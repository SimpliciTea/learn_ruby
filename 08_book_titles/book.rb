class Book
	attr_reader :title

	def title=(new_title)
		stop_words = "a in an the and but for or of nor on at to from by".split(' ')
		working_title = new_title.split.map { |word|
			if stop_words.include? word
				word
			else
				word.capitalize
			end
		}

		working_title[0] = working_title[0].capitalize

		@title = working_title.join(' ')
	end
end

