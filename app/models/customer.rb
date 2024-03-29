class Customer < ApplicationRecord

  has_many :subscriptions
  has_many :teas, through: :subscriptions
  
  validates :email, uniqueness: true, presence: true
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :address

end