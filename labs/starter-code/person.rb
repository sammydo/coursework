class Person

    def name
        # create a name variable
        my_name = "Sam"

    end

    def age
        # create age variable here
        my_age = 25

    end

    def children
        # create children array here
        not_my_kids = ["Jessie", "Lucy", "Junior", "Mum"]


    end

    def address

        # create address hash here
        my_address = {

          address: "295 Flat f",
          house_number: 295,
          street: "Clapham Road",
          county: "London",
          town: "London",
          email_addresses:[ "sam2udoh@aol.com", "samudoh@gmail.com"],
          postcode: "sw9 9bn"
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" ,"cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        # puts memorable_stuff[:birth_town] +favourite_things[1]
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
        # puts password
        # favourite_things.insert(1, memorable_stuff[:birth_town])
        # puts favourite_things

    end


end
