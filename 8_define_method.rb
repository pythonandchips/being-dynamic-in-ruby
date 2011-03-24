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

  self.instance_methods(false).each do |method_name| 
    define_method :"do_#{method_name.to_s}" do
      puts self.send(method_name)
    end
  end
end


zombie = Zombie.new

zombie.do_walk

puts zombie.respond_to?(:do_walk)
