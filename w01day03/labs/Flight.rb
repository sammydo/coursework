class Flight

  attr_accessor :desti , :person

  def initialize desti
      @desti = desti
      @person = []

  end
  def flight_detail
    "Destination: #{self.desti} || Person: #{self.person}"
  end

end
