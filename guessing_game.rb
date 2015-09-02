#In this game, a user has 5 chances to guess a number between 1 and 100
#chosen at random by the computer.

secret_array = (1..99).to_a
#secret_array.shuffle!
secret_num = secret_array.shuffle.sample
#secret_num = rand(1..99)
guess_array = []

def user_input
  puts "Number please: "
  gets.chomp.to_i
end

def test_duplicates(array_x, var_y)
  if array_x.include?(var_y)
    puts "Doh! No duplicates!"
  else
    return false
  end
end

def compare(var1, var2)
  if var1 < var2
    return "That's too low."
  elsif var1 > var2
    return "That's too high."
  elsif var1 == var2
    return "You got it!"
  end

end

def guess_check(secret_num, guess_array)
  count = 0
  while count < 5 do
    count += 1
    human_guess = user_input
    if !test_duplicates(guess_array, human_guess)
      guess_array << human_guess
    end
    puts compare(human_guess, secret_num)
    if count == 5 && human_guess != secret_num
      puts "Too bad! You fail!"
    end
  end
end

guess_check(secret_num, guess_array)
puts "The secret number was #{secret_num}."
