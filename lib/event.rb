class Event

  attr_reader :coordinates, :id, :tickets

  def initialize(id, x=random_coordinate, y=random_coordinate)
    raise ("cordinates must be within range") if 10 > y && y < -10
    raise ("cordinates must be within range") if 10 > x && x < -10
    @coordinates = [x,y]
    @id = id
    @tickets = []
  end

  def add_ticket(ticket)
    tickets << ticket.new(id)
  end

  private

  def random_coordinate
    return rand(20) - 10
  end






end