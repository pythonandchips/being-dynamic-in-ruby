class Zombie
  def kill_human
    return "I just want a hug"
  end
  
  def eat_human
    "hmmm, tastes of chicken"
  end  

  def infect_human hungry
    if hungry
     "Please welcome David Heinemeier Hansson"
    end
  end
end

zombie = Zombie.new

puts("kill human")
puts(zombie.kill_human)
puts("-------------------------------------------------")
#puts("eat human")
#puts(zombie.eat_human)
#puts("-------------------------------------------------")
#puts("infect_human when not hungry")
#puts(zombie.infect_human(false))
#puts("-------------------------------------------------")
#puts("infect_human when hungry")
#puts(zombie.infect_human(true))

