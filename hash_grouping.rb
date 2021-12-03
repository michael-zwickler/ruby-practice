# Group the array of hashes below into a hash, 
# where each key of the hash is a sport, and
# each value of the hash is a list of names of people who play that sport.
=begin
hash_player = {
  :tennis => ['Sam', 'Ed'],
  :squash => ['Mary'],
  :football => ['Mark']
}
=end

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
]

# create a new empty hash
sorted_by_sport = Hash.new()

players.each do |player|
  # player is a hash!
  # check if tha value stored under player:sport is already used as a key in sorted_by_sport
  # if not, add it. and also add an [] to and push the name into it
  if sorted_by_sport.include?(player[:sport].to_sym)
    sorted_by_sport[player[:sport].to_sym].push(player[:name])
  else 
    sorted_by_sport[player[:sport].to_sym] = [player[:name]]
  end
end
puts sorted_by_sport