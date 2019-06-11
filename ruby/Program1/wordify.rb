=begin
	Name: Francis Kim
	File: wordify.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: I read a input value as command line argument. I made wordify method which handle all the required implementation.
		For this program, a word is defined to be a sequence of characters starting with a letter or a digit, and consisting of letters,
		digits, or hyphens
=end

# Wordify class -- this class is one class that contains every required
class Wordify

	# wordify (word) -- this is handle all the required to implement wordify program
	def wordify(word)
		length = word.length		# get a length of input
		string = ""			# string initialize (this is the output of each line)
		start = 0			# start decide which string should be save 
		index = 0			# index is each index in word
		while length != 1		# loop until length 1
			
			if start == 0		# check the first statement, if there is only letter or number, then start = 1 and start to save string
				if word[index] >= 'a' && word[index] <= 'z'	# if character is in a to z
					start = 1
				elsif word[index] >= 'A' && word[index] <= 'Z'  # if character is in A to Z
					start = 1
				elsif word[index] >= '0' && word[index] <= '9'	# if character is in 0 to 9
					start = 1
				else
			
				end
			end

			if start == 1		# This save actual string to print out each line
				if word[index] >= 'a' && word[index] <= 'z'
					string = string + word[index]		# save a to z
				elsif word[index] >= 'A' && word[index] <= 'Z'	
					string = string + word[index]		# save A to Z
				elsif word[index] >= '0' && word[index] <= '9'
					string = string + word[index]		# save 0 to 9
				elsif word[index] == '-'
					string = string + word[index]		# we can save - if it is in character
				else
					if length-1 != 1 			# seperate line if there is exception character in string
						puts string			# and print
						start = 0			# initialize
						string = ""			# initialize
					end
				end 

			end
			length = length - 1					# length is reduce by 1
			index = index + 1					# index of word
		end
		if string != ""	
		puts string
		end
	end

end

newObject = Wordify.new				# create object
File.foreach("#{ARGV[0]}", " ") do |word|	# read line argument
	print newObject.wordify(word)		# print result with wordify
end
