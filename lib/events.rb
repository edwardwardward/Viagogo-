
class Events

  attr_accessor :event_list

  def initialize
    @event_list = []
  end

  def add_event(event)
    coordinate_duplicate_check(event) ? event_list << event : nil
  end

  def random_events(event)
    10.times do |i|
      add_event(event.new(i+1))
    end
  end
  
  private

  # A check for any duplicate cordinates
  def coordinate_duplicate_check(event)
    event_list.each {|list| return false if event.coordinates == list.coordinates}
  end



end
