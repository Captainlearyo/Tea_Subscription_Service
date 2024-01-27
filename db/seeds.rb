# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

@customer1 = Customer.create(email: "customer1@example.com", first_name: "John", last_name: "Doe", address: "123 Main St")
@customer2 = Customer.create(email: "customer2@example.com", first_name: "Jane", last_name: "Smith", address: "456 Elm St")
@customer3 = Customer.create(email: "customer3@example.com", first_name: "Bob", last_name: "Johnson", address: "789 Oak St")

@tea1 = Tea.create(title: "Green Tea", description: "A healthy and refreshing green tea.", temperature: 80, brew_time: 3)
@tea2 = Tea.create(title: "Black Tea", description: "A strong and bold black tea.", temperature: 95, brew_time: 4)
@tea3 = Tea.create(title: "Herbal Tea", description: "A soothing herbal infusion.", temperature: 90, brew_time: 5)


@subscription1 = @customer1.subscriptions.create(customer_id: @customer1.id, tea_id: @tea1.id, title: "Tea 1 Subscription", price: 10, frequency: 1, status: 1)
@subscription2 = @customer1.subscriptions.create(customer_id: @customer1.id, tea_id: @tea2.id, title: "Tea 2 Subscription", price: 12, frequency: 1, status: 1)
@subscription3 = @customer1.subscriptions.create(customer_id: @customer1.id, tea_id: @tea3.id, title: "Tea 3 Subscription", price: 15, frequency: 1, status: 0)