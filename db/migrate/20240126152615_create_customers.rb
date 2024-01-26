class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end
