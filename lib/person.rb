# your code goes here
class Person
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end
    def happiness=(happy)
        if happy > 10
            @happiness = 10
        elsif happy < 0 
            @happiness = 0
        else
            @happiness = happy
        end
    end
        def hygiene=(clean)
            if clean > 10
                @hygiene = 10
                elsif clean < 0
                    @hygiene = 0
                else 
                    @hygiene = clean
                end
            end
            def happy?
                @happiness > 7
            end
            def clean?
                @hygiene > 7
            end
            def get_paid(amount)
            @bank_account += amount
            "all about the benjamins"
            end
            def take_bath
            self.hygiene = @hygiene + 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
            end
            def work_out
            self.hygiene = @hygiene - 3
                    self.happiness = @happiness + 2
                    "♪ another one bites the dust ♫"
            end
            
            def call_friend(name)
                self.happiness = @happiness + 3
                name.happiness = name.happiness + 3
                "Hi #{name.name}! It's #{@name}. How are you?"
            end
            def start_conversation(person, subject)
                if subject == "politics"
                    self.happiness = @happiness - 2
                    person.happiness = person.happiness - 2
                    
             return "blah blah partisan blah lobbyist"
            end
            if subject == "weather"
                self.happiness = @happiness + 1
                person.happiness = person.happiness + 1
            
         return "blah blah sun blah rain"
        end
        if subject == "programming"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            
     return "blah blah blah blah blah"
    end

        end
end