class Zombie

  [:walk, :run, :eat].each do |action|
    define_method action do
      puts action.to_s
      self
    end
  end

  def to subject
    klass = Object.const_set(subject, Class.new)
    new_klass = klass.new()

    puts new_klass.class.name

    new_klass.instance_eval do
      def method_missing method_name
        puts method_name.to_s
      end
    end
    new_klass
  end

end

class Object
  def zombie
    return Zombie.new
  end
end


zombie.walk.to("Human").eat
