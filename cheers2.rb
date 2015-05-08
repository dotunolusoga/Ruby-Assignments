
require "date"

def ask_for_birthday
  puts "Hey, whats your birthday?[MM/DD]"

  birthday = gets.chomp

  while birthday.empty?
    puts "Hey, whats your birthday?[MM/DD]"
  else
    birth_day = Date.parse(birthday)
    todays_date = Date.today
    $b_days = (birth_day - todays_date) % 365
    bday_count = $b_days.to_i
  end
  puts "Awesome!  Your birthday is in #{bday_count} days! Happy Birthday in advance!"
end
