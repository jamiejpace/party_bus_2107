class Bus
  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
  end

  def yell_at_passengers
    @passengers.map do |name|
      name.upcase
    end
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    if number_of_passengers > 4
      true
    else
      false
    end
  end

  def kick_out
      passengers.shift
    end
end
