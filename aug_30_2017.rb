def select_cards(possible_cards, hand)

  #loops through the iteration below until the hand array has 3 cards.
  while hand.count < 3

    possible_cards.each do |current_card|
      print "Do you want to pick up #{current_card}?"
      answer = gets.chomp

      if answer.downcase == 'y'
        hand << current_card
      end
      # return hand <-- moved this from inside the loop to outside of the loop. After the first loop it stops and returns the hand because of the return value. Return breaks the loop and returns only the first choice. Return needs to be outside of the loop so that the 'hand' array can gather all of your choices in the loop and then can return the value.

      #breaks the loop once three cards have been picked by the user
      if hand.count >= 3
        break
      end
    end
  end

  return hand #<-- moved

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"


#output should look like this:
# Do you want to pick up queen of spades?y
# Do you want to pick up 2 of clubs?n
# Do you want to pick up 3 of diamonds?n
# Do you want to pick up jack of spades?y
# Do you want to pick up queen of hearts?y
# Your new hand is:
# queen of spades
# jack of spades
# queen of hearts
