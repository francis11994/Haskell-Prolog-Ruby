=begin
	Name: Francis Kim
	File: Concordance.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: I read a input value as command line argument. I made wordsort to sort in order, and concordance to print all proper result
		A concordance is an alphabetical list of words from a document in which the words are paired with their
		locations in the document.
=end

# Concordance -- this class has two methods to implement program

class Concordance
	# wordsort(word) -- this sort words in order and I used insertion order
	def wordsort (word)
		wordLength = word.length	# get a length of input
		
		if wordLength > 1		# if length is bigger than 1
					
			for i in 0..word.length-1 do	# loop begin first index of word
						
				for a in 0..word.length-2 do	# and compare all the other words
					if word[i] < word[a]	# if starting word is less then other words, then sort

						key = word[a]	# key is other word

						word[a] = word[i]	# other word should be starting word (swap)
						word[i] = key		# starting word should be other word (swap)

					end
				end
					
			end
		end
		
	end

	# concordance(sort, original) -- this print out string name and what location is in there, sort is sorted array, and original is unsorted array
	def concordance (sort, original)

		sortLength = sort.length	# length of sort array
		originalLength = original.length	# length of original array
		duplicate = ""			# duplicate is represent duplicate
		count = 1			# count increase by 1 and represent wide length
		maxLength = 0			# save maximum length
		for c in 0..sortLength-1	# loop until sort length
			str = sort[c]		# save each string from sort array
			if str.length > maxLength	# if length of string is bigger than max length
				maxLength = str.length	# save max length as string length
			end
		end

		for i in 0..sortLength-1	# loop until sort length
			string = sort[i]	# original string
			padString = sort[i]	# pad string from original string to set max length
			pad = maxLength - string.length
			for z in 1..pad
				padString = " " + padString	# add white space in front of string
			end
			if string != duplicate			# string should not be duplicate
				duplicate = sort[i]		# save array string into duplicate
				print padString			# print string with proper white space
				for a in 0..originalLength-1
					split = original[a].split	# split original array with white space
					split.each do |value|			# get each string from line
						if string.eql? value		# if string is equal to each string from line
				
							print " (#{a+1},#{count})"	# print location 
							
						end
						count = count + 1			# count represent wide (1, x) like x
					end
					count = 1					# initialize
				end	
				puts ""							# print new line
			end
			
		end
	end
end

sort = []	# initialize array, this will save sorted string from file
original = []	# initialize array, this is just original string from file
string = ""	# initialize string, save each line into string
newObject = Concordance.new	# create object
File.open("#{ARGV[0]}").each_line do |word|
	string = string + word	# save word into string
	original.push(word)	# put each word into original array
end
string = string.split		# split with white space from string
string.each do |value|
	sort.push(value)	# push each string into sort array
end
newObject.wordsort(sort)	# sorted sort array
newObject.concordance(sort, original)	# print out all string and position


