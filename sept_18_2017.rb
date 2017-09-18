ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd place. A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.
#
# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'} shows that this voter chose Smudge for first place, Tigger for 2nd, and Simba for 3rd. Smudge would be awarded 3 points, Tigger would be awarded 2 points, and Simba would be awarded 1 point.
#
# Tally up all the votes and determine who won.

votes = { 'Smudge' => 0, 'Tigger' => 0, 'Simba' => 0, 'Bella' => 0, 'Lucky' => 0, 'Boots' => 0, 'Felix' => 0 }
ballots.each do |vote|
  vote.each do |place, name|
    if place == 1
      votes[name] += 3
    elsif place == 2
      votes[name] += 2
    else
      votes[name] += 1
    end
  end
end

sorted_votes = votes.sort_by { |name, score| score }

puts "The votes are in!"
puts "The winner is #{sorted_votes.last[0]} with #{sorted_votes.last[1]} points!!"
