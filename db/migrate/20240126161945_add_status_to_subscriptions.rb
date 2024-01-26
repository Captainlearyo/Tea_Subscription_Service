class AddStatusToSubscriptions < ActiveRecord::Migration[7.1]
  def change
    add_column :subscriptions, :status, :integer, default: 1
  end
end
