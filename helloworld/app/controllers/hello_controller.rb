class HelloController < ApplicationController
  def index
     @greeting = Greeting.get_random_greeting()
  end
end
