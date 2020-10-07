class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    if hours == 8
    @opening_time = '18:00'
  elsif hours == 7
    @opening_time = '23:00'
   end
  end

  def add_dish(food)
    @dishes << food
  end 
end
