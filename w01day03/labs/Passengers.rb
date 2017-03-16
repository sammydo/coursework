class Passengers

  attr_accessor :firstname , :surname , :age , :nationaility , :flightid

  def initialize firstname , surname , age , nationaility , flightid
      @firstname = firstname
      @surname = surname
      @age = age
      @enationaility = nationaility
      @flightid = flightid

  end
  def passenger_details
    "#{self.firstname} #{self.surname} #{self.age} #{self.nationaility} #{flightid}"

  end



end
