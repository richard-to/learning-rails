class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :stories, dependent: :destroy
  has_many :critiques, dependent: :destroy
  belongs_to :role
  before_create :set_default_role

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end

end
