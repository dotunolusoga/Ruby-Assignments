
require "date"

def ask_for_birthday
  puts "Hey, whats your birthday?"
  gets.chomp.upcase
end

birthday = ""

while birthday.empty?
 birthday = ask_for_birthday
end

birth_day = Date.parse(birthday)
todays_date = Date.today
$b_days= (birth_day - todays_date) % 365
bday_count = $b_days.to_i

puts "Awesome!  Your birthday is in #{bday_count} days! Happy Birthday in advance!"
