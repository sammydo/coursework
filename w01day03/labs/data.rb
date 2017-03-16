class Data
  def self.get_data #static function
    # List of Airport
    list_of_airports = [
      Airport.new("London Heathrow" , "England"), Airport.new("London Gatwick" , "England"),
      Airport.new("Manchester" , "England"), Airport.new("Birstol International" , "England")
    ]

    # List of Terminal
    list_of_airports[0].terminal = [Terminal.new("south", 1000), Terminal.new("north", 1100),
      Terminal.new("West", 1300), Terminal.new("East", 1400)
    ]

    # List of Flight
    list_of_airports[0].terminal[0].flight = [Flight.new("England to Portugal"), Flight.new("England to Spain"),
      Flight.new("England to New York"), Flight.new("England to Amsterdam" )

    ]

    # List of Person
    list_of_airports[0].terminal[0].flight[0].person = [Person.new("Cril Mupakile"), Person.new("Salman Khan"),
      Person.new("Osvaldo"), Person.new("Joe Clayton")
    ]
  end

end
