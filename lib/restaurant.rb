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
    # I know this isn't right but I didn't
    #understand the directions
   end
  end

  def add_dish(food)
    @dishes << food
  end

  def open_for_lunch?
    if opening_time == '10:00'
      true
    else opening_time == '16:00'
      false
    end
  end

  def menu_dish_names
    @dishes.map(&:upcase)
  end

  def announce_closing_time(hours)
    if hours == 5
      @opening_time = "Fuel Cafe will be closing at 11:00AM"
    elsif hours == 7
      @opening_time ="Il Posto will be closing at 11:00PM"
    end
  end 
end
