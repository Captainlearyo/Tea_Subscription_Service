class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|

      t.references :customer, foreign_key: true
      t.references :tea, foreign_key: true
      t.string :title
      t.integer :price
      t.boolean :status
      t.integer :frequency
      
      t.timestamps
    end
  end
end
