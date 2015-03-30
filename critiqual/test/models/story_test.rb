require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test "should calculate word count" do
    story = stories(:one)
    story.story = "There's more to it than, my mother-in-law said."
    assert_equal story.word_count, 8
  end

  test "should calculate word count with nil story" do
    story = Story.new
    assert_equal story.word_count, 0
  end

  test "should not save empty story" do
    story = Story.new
    assert_not story.save
  end

  test "should not save story with missing title" do
    story = stories(:one)
    story.title = nil
    assert_not story.save
  end

  test "should not save story with missing story content" do
    story = stories(:one)
    story.story = nil
    assert_not story.save
  end
end
