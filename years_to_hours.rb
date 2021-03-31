# Ruby Exercise: You will use the ruby development environment you set up on your machine for Backend 1.
# Write a program which asks the user for a number of years, and then prints out how many hours are in that many years.
# Then it asks for a number of decades, and prints out the number of minutes are in that many decades.
# Then it asks for the user's age, and prints out the number of seconds old the user is.
# Call this program years_to_hours.rb.


SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_YEAR = 365
YEARS_PER_DECADE = 10

# asks the user for a number of years, and then prints out how many hours are in that many years
puts "Enter a number of years"
years = gets.chomp # this returns a string
years = years.to_i # this converts a string to an integer
hours = years * DAYS_PER_YEAR * HOURS_PER_DAY
puts "That's #{hours} hours."

# asks the user for a number of decades, and then prints out the number of minutes that are in that many decades
puts "Enter a number of decades"
decades = gets.chomp # this returns a string
decades = decades.to_i # this converts a string to an integer
minutes = decades * YEARS_PER_DECADE * DAYS_PER_YEAR * HOURS_PER_DAY * MINUTES_PER_HOUR
puts "That's #{minutes} minutes."

# asks the user's age, and prints out the number of seconds old the user is
puts "Enter your age"
age = gets.chomp # this returns a string
age = age.to_i # this converts a string to an integer
seconds = age * DAYS_PER_YEAR * HOURS_PER_DAY * MINUTES_PER_HOUR * SECONDS_PER_MINUTE
# calculate an approximate number of days added to age due to leap years
# assuming the user is at least 4 years old
leap_year_days = age/4
# convert approximate leap year days to seconds
leap_year_seconds = leap_year_days * HOURS_PER_DAY * MINUTES_PER_HOUR * SECONDS_PER_MINUTE
# add additional leap year seconds to user's age
seconds = seconds + leap_year_seconds
puts "You are #{seconds} seconds old."
