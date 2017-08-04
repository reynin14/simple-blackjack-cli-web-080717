require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  score = deal_card + deal_card
  print display_card_total(score)
  score
end

def hit?(initial_round)
  prompt_user
  response = get_user_input
  score = initial_round
  new_card = deal_card
  if response == "h"
    new_card
    score += new_card
  elsif response = "s"
    score
  else
    invalid_command
    prompt_user
  end

  score
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_score = initial_round
  until current_score > 21
    current_score = hit?(current_score)
    display_card_total(current_score)
  end

  end_game(current_score)
end
