class Person

  attr_accessor :fullname

  def initialize fullname
      @fullname = fullname


  end
  def flight_detail
    "Destination: #{self.fullname}"
  end

end
