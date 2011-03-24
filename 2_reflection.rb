class Zombie
  @@legs_remaining = 1
  @humans_eatin = 1

  def self.spawn count
    return (0..count).map{ Zombie.new }
  end

  def eat_brains
    puts "munchies"
  end

end

puts Zombie.methods.sort
#puts Zombie.method(:spawn)
#puts Zombie.new.class
#puts Zombie.respond_to?(:spawn)
#puts Zombie.new.respond_to?(:spawn)
#puts Zombie.new.respond_to?(:eat_brains)
#puts Zombie.class_variables
#puts Zombie.instance_variables
