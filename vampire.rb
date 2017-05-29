class Vampire

attr_reader :name, :age
attr_accessor :in_coffin, :drank_blood_today

@@coven = []

  def initialize(name, age)
    @name  = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
  end

  def self.create
    fledgling = Vampire.new(name, age, in_coffin, drank_blood_today)
    @@coven << fledgling
    fledgling
  end

  def drink_blood
    if @drank_blood_today == false
      @drank_blood_today == true
    end

  def sunrise
    @@coven.each do |ind_vampire|
      if @drank_blood_today == false
        puts "Starved"
        @@coven.delete(ind_vampire)
      end
      if @in_coffin == false
        puts "Poof!"
        @@coven.delete(ind_vampire)
      end
    end
  end

  def sunset
    @drank_blood_today == false
    @in_coffin == false
  end

  def go_home
    @in_coffin == true
  end

  

end
