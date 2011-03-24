class Zombie

  def preform_action action
    puts("you want me to #{action}")
    case action
      when "walk" then do_walk()
      when "run" then do_run()
      when "attack" then do_attack()
      when "feed" then do_feed()
      else puts ("cannie do that")
    end
  end

  def do_walk()
    puts("zombie walking")
  end

  def do_run()
    puts("zombie running")
  end

  def do_attack()
    puts("zombie attack")
  end

  def do_feed()
    puts("zombie feed")
  end
end

zombie = Zombie.new

zombie.preform_action "walk"
zombie.preform_action "run"
zombie.preform_action "attack"
zombie.preform_action "feed"
zombie.preform_action "do_a_little_dance"
