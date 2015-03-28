class Greeting < ActiveRecord::Base
  def self.get_random_greeting
    offset = rand(self.count)
    return self.offset(offset).first
  end
end
