require 'pry'


class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end

    def happiness=(num)
    @happiness =  if num > 10
                    10
                    elsif num < 0
                    0
                    else
                    num
                    end

    end

    def hygiene=(num)
    @hygiene =  if num > 10
                    10
                elsif num < 0
                    0
                else
                    num
                end
    
    # with clamp
    # @hygiene = num.clamp(0, 10)
    end

    def clean?
    self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
    end

    def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
    case topic 
        when "politics"
            [self, friend].each { |person| person.happiness -= 2 }
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each { |person| person.happiness += 1 }
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
    end
    
    end


end
















# #create a Person class with the behavior
# require 'pry'


# #premitive objects...
# #person has: name, bank_account, happiness, hygene
# class Person
#     #use attr macro or use a setter/getter
#     #attr_reader :name, 
    
#     attr_accessor  :bank_account
#     attr_reader :name, :happiness, :hygene


#     def initialize (name) 
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end 

#     def happiness=(num)
#         @happiness = if num > 10
#             10
#         elsif num < 0
#             0
#         else
#             num
#         end

#         end

#         def hygiene=(num)
#             @hygiene =  if num > 10
#                         10
#                         elsif num < 0
#                         0
#                         else
#                         num
#                         end
#                     end

#         def clean?
#         self.hygiene > 7
#         end
    
#         def happy?
#         self.happiness > 7
#         end
    
#         def get_paid(amount)
#         self.bank_account += amount
#         "all about the benjamins"
#         end
    
#         def take_bath
#         self.hygiene += 4
#         "♪ Rub-a-dub just relaxing in the tub ♫"
#         end
    
#         def work_out
#         self.happiness += 2
#         self.hygiene -= 3
#         "♪ another one bites the dust ♫"
#         end
    
#         def call_friend(friend)
#         self.happiness += 3
#         friend.happiness += 3
#         "Hi #{friend.name}! It's #{self.name}. How are you?"
#         end
    
#         def start_conversation(friend, topic)
#         case topic 
#         when "politics"
#             [self, friend].each { |person| person.happiness -= 2 }
#             "blah blah partisan blah lobbyist"
#         when "weather"
#             [self, friend].each { |person| person.happiness += 1 }
#             "blah blah sun blah rain"
#         else
#             "blah blah blah blah blah"
#         end


#         end






    #setter method (@name is the instance variable, now we can use this variable throughout the class in other methods)
    # def name= (person_name)
    #     @this_person_name = (person_name)
    # end

    #getter method / reader method (going to return the value of setter)


    # def self.all #class method and returns all instances of self
    #     @@all
    # end

 
#end

#create a new instance/object of Person







# NOTES #
#oo is...
# - class
#-instantiation => .new
#-reader/writer => attributes/properties
#methhods/behaviors

# Keywords : instance, instance methods, class methods(blueprint of what 
#each object is going to look like)

#Classes
#-blueprint for what each object looks like
#-what data is going to be contained within each object
#- what behaviors objects have
#-factory
#-customized objects outside of the ruby primitive objects
#-creating classed syntax: class/end, keywords and capitolized class names

#Objects
#-from class blueprints, we can instantiate several objects
#-each object is unique to one another
#-.object_id to check object id
#-Everything in Ruby is an object
#.new method to instantiate a new object

#Methods
#-behaviors/messages/ som type of function that objects or classes can perform on their own data
#-when you call is, the method is the message
#-reusable
        #instance methods - perform on individule instances, behavior that belongs to an instance
        #class methods - perform on class as a whole, behavior that belongs to a class


#Variables
#-local variable = scope is the method that it is defined in, 
#-instance variables = stntax: 1 @ / scope: class
#-class variables = syntax 2 @@ / scope: entire class
#-global variables



# Some Notes 
# #method
# def Person
# end



            #Examples:
# #hash(this is creating an object)
# person1 = {name:"Sam", age: 22} #hash.new

#person2 = {"Lee", 22} (array)

#person3name = "max"
#person3age = 22

#def greeting(person)
    #puts "Hi, my name is #{person[:name]}", I am #{person[:age]}
