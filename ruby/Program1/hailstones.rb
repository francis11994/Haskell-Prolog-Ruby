=begin
	Name: Francis Kim
	File: hailstones.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: I read a input value as command line argument. I made hailstone method which handle all the required implementation.
		As an example, consider the integer 6. It’s even, so we halve it to get 3. 3 is odd, so we triple it and add
		one, producing 10. Continuing produces this sequence of nine values.
		ex) 6, 3, 10, 5, 16, 8, 4, 2, 1
=end

# Hailstones class -- this class is one class that contains every required

class Hailstones

	# hailstone (n) -- this is handle all the required to implement hailstones program

	def hailstone (n)
		num = 1				# represent number of numbers in line
		largest = n			# represent the larges number
		count = 0			# count total numbers

		n = n.to_s			# change integer to string to count size of number
		size = n.length			# get size of number
		length = 6 - size		# size should be 6
		while length != 0
			n = " " + n		# add white space if it is not size 6
			length = length - 1
		end
		print "#{n}" 			# print first number
		n = n.to_i			# change string to integer

		while n != 1 do			# loop until input number is encounter 0
			if num == 8		# if number of words are 8 in line
				puts ""		# then print out new line
				num = 0		# and set up the number of words to 0
			else
				if n%2 == 0	# if input number is even
					n = n / 2	# then divide by 2
				else		# if input number is odd
					n = (n*3)+1
				end
				
				n = n.to_s	# input change to string
				size = n.length	# get a size of input
				length = 6 - size	# length is 6 - length of input

				while length != 0	# get each number has size of 6, so if not add white space in front of it
					n = " " + n	# add white space
					length = length - 1
				end

				print "#{n}"		# print each calculated value
				n = n.to_i		# change integer to string
				num = num + 1		# count number of numbers in line
				count = count + 1	# count total numbers
			end
			
			if largest < n
				largest = n		# this is decide what is the biggest number
			end
			
		end
		puts ""
		puts ""
		print "There are #{count + 1} values; the largest is #{largest}."	# print out statement
	end
end

newObject = Hailstones.new
puts "The hailstone sequence starting with #{ARGV[0]}: "	# print out statement
puts ""								# print out newline
input = ARGV[0].to_i						# command as line argument
puts  newObject.hailstone(input)				# print out all the statement


