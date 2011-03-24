class Zombie

  def self.spawn
    puts "hmmm hungry"
  end

  def attack_the_living outcome
    puts "ahhhhh brains, #{outcome} human"
  end

end

#puts Zombie.spawn
#puts Zombie.send(:spawn)
#
#puts Zombie.new().attack_the_living "kill"
#puts Zombie.new().send(:attack_the_living, "kill")
