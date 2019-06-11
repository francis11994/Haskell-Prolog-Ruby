=begin
	Name: Francis Kim
	File: wordsort.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: I read a input value as command line argument. I made two methods which is search and wordsort in out of class, so I do not have to make a object.
		I used Insertion order to sort input file in order, and save them into words-sorted.txt file.
=end

# Wordsort -- there is no any helper methods, so I did not use class
class Wordsort
	
end

# methods out of class

# wordsort (word) -- this sorted order from the input file, and I used Insertion order 
def wordsort (word)
		wordLength = word.length		# Count the length of word(array
		
		if wordLength > 1
					
			for i in 0..word.length-1 do	# loop begin first index of word
						
				for a in 0..word.length-2 do	# and compare all the other words
					if word[i] < word[a]	# if starting word is less then other words, then sort
						key = word[a]	# key is other word
						word[a] = word[i]	# other word should be starting word (swap)
						word[i] = key		# starting word should be other word (swap
					end
				end
					
			end
		end
		return word		# return sorted word(array)
end

def search()
	array = []	# set up array
	string = ""	# initialize string
	File.open("#{ARGV[0]}").each_line do |word|
		string = string + word	# save all word into string
	end
	string = string.split	# string split by white space
	string.each do |value|
		array.push(value)	# push each word into array
	end
	return array			# return that array
end

searchArray = search()			# search all the words in input file
copyArray = wordsort(searchArray)	# sorted words in order
out_file = File.new("words-sorted.txt", "w")	# create new file

out_file.puts(copyArray)			# write sorted words in file 
out_file.close					# close file