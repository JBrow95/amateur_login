#Beginner Login
counter = 0

def login(counter)

	puts "Enter Username: "

	user_name = gets.chomp

	puts "Enter Password: "

	pass_word = gets.chomp

	if user_name == "test" && pass_word == "123"
		dice_roll()
	else
		if counter == 3
			puts "She cannot take any more of this, Captain!"
			exit
		else
			puts "Incorrect username/password"
			counter = counter + 1
			login(counter)
		end
	end
end


#puts "Login Succesful, Welcome #{user.capitalize}!"

# Short game to play after logged in

def dice_roll()
	ar1 = [1,2,3,4,5]

	puts "Choose a number #{ar1}"

	selection = gets.chomp.to_i
	if selection == ar1.sample
		puts "You win!"
	else  
		puts "You lose"
	end
	answer()
end

def answer()
	puts "Would you like to play again? y/n"

	ans = gets.chomp

	if ans == "y"
		dice_roll()
	else
		puts "Thanks for playing!"

		exit
	end
end

login(1)