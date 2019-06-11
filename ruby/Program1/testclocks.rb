=begin
Name: Francis Kim
	File: testclocks.rb
	Course: csc372
	Assignment Name: Program 1
	Instructor and TA: Lester I. McCann, Patrick Hickey, and Andrea Padula
	Due Date: 02/10/2017 2:00 pm
	Detail: 
		This is to be a tester of my own design that exercises the methods of Clock and AlarmClock
		This is test feature of OOP language for Ruby.
		We made all the methods and instance variable in the Clock and AlarmClock class.
		Now it is time to use them to prove.
=end


require_relative 'clock'	#  look in current directory for clock.rb,
                             	# which contains the Clock class definition
require_relative 'alarmclock'	# look in current directory for alarmclock.rb,
                             	# which contains the AlarmClock class definition

clock = Clock.new(22, 23)	# set clock hours = 22 and minute = 23
puts clock.formattime()		# print out digital clock (represent 10:23 P)

clock = Clock.new(10, 23)	# set clock hours = 10 and minute = 23
puts clock.formattime()		# print out digital clock (represent 10:23 A)

clock.settime(15, 26)		# change time from 10:23 to 15:26
puts clock.formattime()		# print out digital clock (represent 3:26 P)

clock.settime(9,12)		# change time from 15:26 to 09:12
puts clock.formattime()		# print out digital clock (represent 9:12 A)

# alarm is inherit class from Clock class
alarm = AlarmClock.new(12, 16)	# set alarm hours = 12 and minute = 16
alarm.setalarm(13, 17)		# change alarm from 12:16 to 13:17
puts alarm.formatalarm()	# print out digital clock (represent 1:17 P)

alarm.setalarm(19,12)		# change alarm from 13:17 to 19:12
puts alarm.formatalarm()	# print out digital clock (represent 7:12 P)

alarm.setalarm(0,0)		# change alarom from 19:12 to 00:00
puts alarm.formatalarm()	# print out digital clock (represent 12:00 A)
puts clock.formattime()		# still print out digital clock (represent 9:12 A)