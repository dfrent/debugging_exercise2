require 'pry'

def select_cards(possible_cards, hand)

hand = []
  possible_cards.each do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      hand << current_card
      elsif answer.downcase == 'y' && hand.count >= 3
      puts "you have chosen 3 cards"
    else
      end
    end
    return hand
end



available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

until new_hand.count == 3
  puts "Please play again and pick 3 cards"
  new_hand = select_cards(available_cards)
end

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
