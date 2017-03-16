class Airport

  attr_accessor :name , :country , :terminal

  def initialize name , country
      @name = name
      @country = country
      @terminal = []
  end
  def airport_detail
    "Airport: #{self.name} || Country: #{self.country} || Terminal: #{self.terminal}"
  end



end
