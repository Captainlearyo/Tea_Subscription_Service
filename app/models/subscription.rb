class Subscription < ApplicationRecord
  
  belongs_to :customer
  belongs_to :tea

  validates :title, presence: true
  validates :price, presence: true
  validates :frequency, presence: true 
  validates :status, presence: true

  enum frequency: { weekly: 0, monthly: 1 }
  enum status: { cancelled: 0, active: 1 }
  
  def toggle_status
    if active?
      update(status: 'cancelled')
    else
      update(status: 'active')
    end
  end
end