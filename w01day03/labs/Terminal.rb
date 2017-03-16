class Terminal

  attr_accessor :name , :capacity , :flight

  def initialize name , capacity
      @name = name
      @capacity = capacity
      @flight = []

  end
  def terminal_detail
    "Airport: #{self.name} || Country: #{self.country} || Terminal: #{self.terminal} || Flight: #{self.flight}"

  end



end
