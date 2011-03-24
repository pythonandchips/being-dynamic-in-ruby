class DecapitatedZombie
  def head
    nil
  end
end

ZombieKiller = Class.new

ZombieKiller.instance_eval do
  define_method :kill_zombie do
    return DecapitatedZombie.new
  end
end

zombie_killer = ZombieKiller.new

zombie = zombie_killer.kill_zombie

puts "state of zombie head " + zombie.head.class.to_s


