# your code goes here
require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :happiness, :name, :hygiene
    
    def initialize(name)
        @bank_account = 25
        @name = name
        @hygiene = 8
        @happiness = 8  
    end

    def happiness=(val)
       @happiness = 
       if val>10
        10
       elsif val < 0
        0
       else
        val
       end
    end

    def hygiene=(val)
        @hygiene = 
        if val>10
         10
        elsif val < 0
         0
        else
         val
        end
    end

    # Instance method
    # using instance variable
    def clean?
        @hygiene > 7
    end
    # using self 
    def happy?
        self.happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(f)
        # binding.pry
        self.happiness +=3
        f.happiness +=3
        # "Hi #{f[:name]}! It's #{self[name]}. How are you?"
        "Hi #{f.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(receiver, topic)
        # binding.pry
        if topic == "politics"
            receiver.happiness -=2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            receiver.happiness +=1
            self.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"

        end
        # case topic
        # when "politics"
        #     receiver.happiness -=2
        #     self.happiness -=2
        #     "blah blah partisan blah lobbyist"
        # when "weather"
        #     receiver.happiness +=1
        #     self.happiness +=1
        #     "blah blah sun blah rain"
        # else
        #     "blah blah blah blah blah"
        # end


    end
end

prsn = Person.new("Steve")
friend=Person.new("Njamba")
# binding.pry