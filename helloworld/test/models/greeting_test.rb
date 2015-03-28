require 'test_helper'

class GreetingTest < ActiveSupport::TestCase
  test "select a random greeting" do
     assert_instance_of Greeting, Greeting.get_random_greeting()
  end
end
