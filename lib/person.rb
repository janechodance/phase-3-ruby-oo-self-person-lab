class Person
    def initialize(name, bank_account= 25, happiness= 8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def bank_account=(value)
        @bank_account = value
    end
    def happiness
        @happiness
    end
    def happiness=(value)
        @happiness = if value> 10
            10
            elsif value <0
                0
                else
                    value
                end
    end
        
    def hygiene
        @hygiene
    end
    def hygiene=(value)
        @hygiene = if value> 10
            10
            elsif value <0
                0
                else
                    value
                end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def get_paid amount
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end
    def take_bath
        @hygiene = self.hygiene=(@hygiene+4)
        if @hygiene > 10 
           @hygiene= 10 
        else
            @hygiene = @hygiene
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @hygiene = self.hygiene=(@hygiene - 3)
        if @hygiene < 0
            @hygiene = 0
        else
            @hygiene = @hygiene
        end
        @happiness = self.happiness=(@happiness+2)
        if @happiness >10
            @happiness = 10
        else
            @happiness = @happiness
        end
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        Person.new(friend)
        [self, friend].each{|person| person.happiness=(person.happiness+3)}
        "Hi #{friend.name}! It's #{@name}. How are you?"

    end
    def start_conversation(friend, topic)
        if topic == "politics"
            [self, friend].each{|person| person.happiness=(person.happiness-2)}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, friend].each{|person| person.happiness=(person.happiness+1)}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
