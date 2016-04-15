class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_save { self.email = email.downcase }
  has_many :lists, dependent: :destroy

  validates :name, length: {minimum: 1, maximum:100}, presence: true
end
