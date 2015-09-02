#In this game, a user has 5 chances to guess a number between 1 and 100
#chosen at random by the computer.

#Computer generates a secret number.
secret_num = rand(1..99)
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

def guess_check(secret_num, guess_array)
  count = 0
  while count < 5 do
    count += 1
    human_guess = user_input
    if !test_duplicates(guess_array, human_guess)
      guess_array << human_guess
    end
    if human_guess < secret_num
      puts "That's too low."
    elsif human_guess > secret_num
      puts "That's too high."
    elsif human_guess == secret_num
      puts "You got it!"
      break
    end
  end
end

guess_check(secret_num, guess_array)
