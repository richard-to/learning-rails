class Story < ActiveRecord::Base
  after_initialize :defaults
  validates :title, :story, presence: true
  belongs_to :user
  belongs_to :genre
  has_many :critiques

  def word_count
    return self.story.squish.split.size
  end

  private
  def defaults
    self.story ||= ""
    self.authors_note ||= ""
  end
end
