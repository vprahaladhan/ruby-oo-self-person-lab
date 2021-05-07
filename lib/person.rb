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
    return_string = "all about the benjamins"
    @bank_account += salary
    return_string
  end
end
