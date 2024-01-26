class Subscription < ApplicationRecord
  
  belongs_to :customer
  belongs_to :tea

  validates :title, presence: true
  validates :price, presence: true
  validates :frequency, presence: true 
  validates :status, presence: true

  enum status: { cancelled: 0, active: 1 }

end