class Zombie

  def walk()
    "zombie walking"
  end

  def run()
    "zombie running"
  end

  def attack()
    "zombie attack"
  end

  def feed()
    "zombie feed"
  end

  def method_missing method_name, *args, &block
    action = method_name.to_s.gsub("do_", "")
    if self.respond_to?(action)
      return puts self.send(action)
    else
      return puts("canny do that")
    end
  end
end

zombie = Zombie.new

zombie.do_a_little_dance

#puts zombie.respond_to?(:do_walk)
