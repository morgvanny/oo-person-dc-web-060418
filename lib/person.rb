require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = self.update_attr(num)
  end

  def hygiene=(num)
    @hygiene = self.update_attr(num)
  end

  def update_attr(num)
    val = num
    val = 10 if val > 10
    val = 0 if val < 0
    val
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, subject)
    case subject
    when 'politics'
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    when 'programming'
      "blah blah blah blah blah"
    end
  end
end