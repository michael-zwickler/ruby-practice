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
  # if the sport does not yet exist in the new hash as symbol, add it and create an empty value array
  # push the currenty player name to the hash
  
  sport = player[:sport].to_sym
  name = player[:name]

  if sorted_by_sport.include?(sport) == false
    sorted_by_sport[sport] = []
  end
  
  sorted_by_sport[sport].push(name)
end
puts sorted_by_sport
