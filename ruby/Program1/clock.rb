=begin
	Name: Francis Kim
	File: clock.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail:	
		Ruby is the bascically Object Oriented Programming language, so we want to prove them using our code providing feature of OOP.
		This file contains the definition of the class Clock. Clock uses Ruby’s Time class to
		represent a 24-hour time in hours and seconds. Its constructor accepts hours and minutes and uses those values to set the
		clock’s time. Clock has a setter (settime(h,m)) that also takes both hours and minutes, and two
		getters (gethour and getminute) to retrieve those components. There is formattime method,
		which takes no arguments but returns a string that, when printed, shows the time as a digital clock
		does, in 12-hour time
		Clock is the parent of alarmclock, so alarmclock is inherit from the clock class.
		And I used strftime method that provided from Time class, this will help to get 12 hours time from 24 hours time, and also I can get if it is AM or PM
		I put the two parameters into clock constructor to recieve hours and minutes.
		@t represent instance variable of Time class, @hour represent instance variable of h, and @min represent instance variable of min.
		I made three additional methods which is top, middle, and bot.
		1. top method return the first height of the string in digital time clock
		2. middle method return the second height of the string in digital time clock
		3. bot method return the last height of the string in digital time clock
		Therefore, at the final, I add up the all those string, and print out nice digital clock.
=end

# class Clock -- Clock class is the parent class from the alarmClock class. this has consist of 7 methods, and it has four instance variable
#		1. @t (time class) 2. @hour (hour) 3. @min (minute) 4. amOrpm (Am or Pm)
#		Construcer recieve two parameter for hour and minute
#		And I used strftime method that provided from Time class, this will help to get 12 hours time from 24 hours time, and also I can get if it is AM or PM
		
class Clock

	# So this recieve two parameters which is hour and minute
	def initialize(h, m)
		@t = Time.new(2016, 10, 12, h, m, 0)	# @t is instance variable of Time class
		@hour = @t.strftime("%I")		# @hour is instance variable of 12 hours
		@min = @t.strftime("%M")		# @min is instance variable of minute
		
	end
	
	# settime(h, m) -- this can set the times what we want time (setter)
	def settime(h, m)				
		@t = Time.new(2016, 10, 12, h, m, 0)	# set time class
		@hour = @t.strftime("%I")		# set hour
		@min = @t.strftime("%M")		# set minute
		
	end
	
	# gethour() -- this method can get hour (getter)
	def gethour()
		return @hour
	end

	# getminute -- this method can get minute (getter)
	def getminute()
		return @min
	end

	#top(h, m) -- this method return string that highest string from the digital clock
	def top(h, m)
		topString = ''	# top String will return final value
		h = h.to_s	# convert hour from integer to string
		if m < 10	# if minute is less than 10
			m = m.to_s	
			m = '0' + m.to_s	# then put the 0 in front of minute (ex 09, 02, 03)
		else

			m = m.to_s		# if not just convert from integer to string
		end
		total = h + m			# I combined the hour and minute in one string
				
		for i in 0..total.length-1 do		# loop until length of total - 1
			if total[i] != '1' && total[i] != '4'		# check the index of total string, and if there is not 1 and 4 the
				
				topString = topString + " _ "		# save bar with two spaces
			
			else

				topString = topString + "   "		# if it is 1 or 4, then print 3 spaces
			
			end

			if h.length == i+1				# if hour length is matched with i
				topString = topString + " "		# then put white space
			end
		end
		topString = topString + "  _ "				# this is the bar for P or A(PM or AM) at the last
		topString = topString + "\n"				# put new line
		return topString					# return final topString
		
	end

	#top(h, m) -- this method return string that middle string from the digital clock
	def middle(h, m)

		middleString = ''	# return middle string from digital clock
	
		h = h.to_s	# convert hour from integer to string
		if m < 10	# if minute is less than 10
			m = m.to_s	
			m = '0' + m.to_s	# then put the 0 in front of minute (ex 09, 02, 03)
		else
			m = m.to_s		# if not just convert from integer to string
		end
		total = h + m			# I combined the hour and minute in one string
		
		for i in 0..total.length-1 do		# loop until toal length
			if total[i] == '1'		# if character is 1
				middleString = middleString + " | "	# put proper bar
			elsif total[i] == '7'		# if character is 7
				middleString = middleString + "  |"	# put proper bar
			elsif total[i]=='2' || total[i] == '3'		# if character is 2 or 3
				middleString = middleString + " _|"	# put proper bar
			elsif total[i]=='4' || total[i] == '8' || total[i] == '9' 	#if character is 4 or 8 or 9
				middleString = middleString + "|_|"	# put proper bar
			elsif total[i]=='5' || total[i] == '6'		# if character is 5 or 6
				middleString = middleString + "|_ "	# put proper bar
			elsif total[i]=='0'				# if character is 0
				middleString = middleString + "| |"	# put proper bar
			end

			if h.length == i+1				# if hour length is matched with i
				middleString = middleString + "."	# then put save which represent colon in the future
			end
		end
		middleString = middleString + " |_|"			# this is the bar for P or A(PM or AM) at the last
		middleString = middleString + "\n"			# put new line
		return middleString					# return final middle string
	end

	#top(h, m) -- this method return string that bottom string from the digital clock
	def bot(h, m, amOrpm)
		lastString = ''	# this will save last string of digital clock

		h = h.to_s	# convert hour from integer to string
		if m < 10	# if minute is less than 10
			m = m.to_s	
			m = '0' + m.to_s	# then put the 0 in front of minute (ex 09, 02, 03)
		else
			m = m.to_s		# if not just convert from integer to string
		end
		total = h + m			# I combined the hour and minute in one string

		for i in 0..total.length-1 do	# loop until total length
			if total[i] == '1'				# if character is 1
				lastString = lastString + " | "		# save proper bar
			elsif total[i] == '4' || total[i] == '7'	# if character is 4 or 7
				lastString = lastString + "  |"		# save proper bar
			elsif total[i] == '2'				# if character is 2
				lastString = lastString + "|_ "		# save proper bar
			elsif total[i] == '3' || total[i] == '5' || total[i] == '9'	# if character is 3 or 5 or 9
				lastString = lastString + " _|"		# save proper bar
			elsif total[i] == '6' || total[i] == '8'	# if character is 6 or 8
				lastString = lastString + "|_|"		# save proper bar
			elsif total[i] == '0'				# if character is 0
				lastString = lastString + "|_|"		# save proper bar
			end

			if h.length == i+1				# if hour length is matched with i
				lastString = lastString + "."		# then save dot which represent colon in the future
			end
		end
		
		# AM and PM is consist of same string in middle and top, except bot. So in the bot method we will decide A or P (AM or PM)
		if amOrpm == 1						# This decide last bar of PM or Am
			lastString = lastString + " |  "		# it is P
		else
			lastString = lastString + " | |"		# It is A
		end
	end	

	# formattime() -- formattime doesn't have any parameters, and it consist of top, middle, and bot method as explain above
	def formattime()
		amOrpm = 0	# this will decide P or A
		topResult = ''	# save top string from the digital clock
		middleResult = ''	# save middle string from the digital clock
		botResult = ''		# save bot string from the digital clock
		
		hour = gethour().to_i	# change to integer for hour
		min = getminute().to_i	# change to integer for minute
		@amOrpm = @t.strftime("%p")	# this get PM or AM, I used strftime method which provided from the Time class
		if @amOrpm == "PM"	# if PM	
			amOrpm = 1	# save 1
		else			# if AM
			amOrpm = 0	# save 0
		end

		topResult = top(hour,min)	# Save top string from the digital clock with top method
		middleResult = middle(hour,min)	# Save middle string from the digital clock with middle method
		botResult = bot(hour,min, amOrpm)	# Save bot string from the digital clock with bot method
		total = topResult + middleResult + botResult	# save all the string in the total
		return total			# return total represent perfect digital time
	end
end