class Zombie
  @@horde = []
  @@plague_level = 10

  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @default_strength = 3

  def self.all
    return @@horde.count
  end

  def self.new_day
    Zombie.some_die_off
    Zombie.spawn
    Zombie.increase_plague_level
    @@horde.count
  end

  def self.some_die_off
    # @@horde.drop(Rand.rand(10))
    rand(11).times do
      @@horde.shuffle!.pop
    end
    @@horde.count
  end

  def self.spawn
    rand(@@plague_level).times do
      fresh_zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      fresh_zombie
      @@horde << fresh_zombie
    end
  end

  def self.increase_plague_level
    @@plague_level += rand(3)
  end


  attr_accessor :speed, :strength

  def initialize(speed, strength)
    @speed = speed
    @strength = strength
    if @speed > @@max_speed
      @speed = @@default_speed
    end
    if @strength > @@max_strength
      @strength = @@default_strength
    end
  end



  def outrun_zombie?
    speed1 = rand(0..@@max_speed)
    if speed1 > @speed
      true
    else
      false
    end
  end

  def survive_attack?
    strength1 = rand(0..@@max_strength)
    if strength1 > @strength
      true
    else
      false
    end
  end

  def encounter
    if outrun_zombie?
      puts "You got away!"
    elsif survive_attack?
      puts "You are now a zombie."
    else
      "You have been killed."
    end
  end

end


Zombie.all.inspect
puts Zombie.new_day
puts Zombie.all.inspect
puts Zombie.spawn
puts Zombie.all.inspect


Zombie.new_day
Zombie.new_day
puts Zombie.all.inspect
puts Zombie.increase_plague_level

zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]

puts zombie1.encounter #not recognizing method??
puts zombie2.encounter
puts zombie3.encounter
