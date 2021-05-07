# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_index)
    @happiness = happiness_index > 10 ? 10 : happiness_index < 0 ? 0 : happiness_index 
  end

  def hygiene=(hygiene_index)
    @hygiene = hygiene_index > 10 ? 10 : hygiene_index < 0 ? 0 : hygiene_index 
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(self.hygiene - 3)
    self.happiness=(self.happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(self.happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if (topic == "politics") then
      modify_happiness(friend, -2, "blah blah partisan blah lobbyist")
    elsif (topic == "weather") then
      modify_happiness(friend, 1, "blah blah sun blah rain")
    else modify_happiness(friend, 0, "blah blah blah blah blah")
    end
  end

  def modify_happiness(friend, points, message)
    self.happiness=(self.happiness + points)
    friend.happiness=(friend.happiness + points)
    message
  end
end
