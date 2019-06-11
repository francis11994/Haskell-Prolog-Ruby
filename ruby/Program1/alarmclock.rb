=begin
	Name: Francis Kim
	File: alarmclock.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: 
		Ruby is the bascically Object Oriented Programming language, so we want to prove them using our code providing feature of OOP.
		This file contains the definition of the class AlarmClock. AlarmClock inherits from
		Clock, and stores the time of the alarm, the setter setalarm(h,m), the getters getalarmhour and
		getalarmminute, and the formatting method formatalarm.
		alarm clock class is the child class from clock class. I got two parameters hour and minute, and I used super to recieve value from the clock class.
		There is three instance variable which is @t (Time class), @hour (hour from clock class), and @min (minute from clock class)
		And I used Time class to easily convert from 24 hours to 12 hour.
=end

require_relative 'clock'		# this is required to use clock class

# class AlarmClock -- this class is child class of clock class. it has 3 instance variable @t, @hour, and @min. I used feature of OOP language as inheritance
#		      In addition, constructer recieve two input parameter, which is h (hour) and m (minute).

class AlarmClock < Clock		# < means I want to inherit from the Clock class

	#consturctor(h,m) -- recieved two parameter h(hour), and m(minute)
	def initialize(h, m)
		super(h, m)	# this is represent feature of OOP language, super is called instance variable from the parent class which is Clock class
		@t = Time.new(2016, 10, 12, h, m, 0)	# this set to new time
	end

	# setalarm(h,m) -- this is set alarm time, and two parameter h and m
	def setalarm(h, m)
		@t = Time.new(2016, 10, 12, h, m, 0)	# set new time
		@hour = @t.strftime("%I")		# save instance variable @hour with 12 hours 
		@min = @t.strftime("%M")		# save instance variable @min with minute
	end

	# getalarmhour() -- this return instance variable @hour
	def getalarmhour()
		return @hour
	end
	
	# getalarmminute() -- this return instance variable @min
	def getalarmminute()
		return @min
	end
	
	# formatalarm() -- this return digital time clock, and I used formattime() method from Clock class to print out it.
	def formatalarm()
		formattime()
	end
end
