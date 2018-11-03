require_relative "./bike.rb"

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(given_capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = given_capacity
  end

  def dock(bike)
    fail "There are already max bikes docked" if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end

end
