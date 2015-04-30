CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}
puts "Welcome to Paper, Rock, Scissors!"

def display_winning_message(winning_choice)
  case winning_choice
  when "p"
    puts "Paper wraps Rock!"
  when "r"
    puts "Rock smashes Scissors!"
  when "s"
    puts "Scissors cuts Paper!"
  end
end
  
loop do
  
  begin
    puts "Pick one (p, r, s):"
    player_choice = gets.chomp.downcase
    puts "You chose #{player_choice}."
  end until CHOICES.keys.include?(player_choice)
  
computer_choice = CHOICES.keys.sample
    puts "Computer chose #{computer_choice}."
    
  if player_choice == computer_choice
    puts "It's a tie"
  elsif (player_choice == "p" && computer_choice == "r") ||  (player_choice == "r" && computer_choice == "s") ||
        (player_choice == "s" && computer_choice == "p")
  display_winning_message(player_choice)
    puts "You win!"
  else 
    display_winning_message(computer_choice)
    puts "Sorry. You lose!"
  end   
    
    puts "Would you like to play again?(y/n)"
    answer = gets.chomp.downcase
    break if answer != 'y' 
end
  
puts "Good-bye for now!"