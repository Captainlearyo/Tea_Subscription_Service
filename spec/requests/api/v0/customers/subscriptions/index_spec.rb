require 'rails_helper'

RSpec.describe 'Customers Subscription index' do
  before :each do
    load_test_data
  end

  it 'Happy path returns jason of all cuntomers' do
    customer = @customer1

    get "/api/v0/customers/#{customer.id}/subscriptions"
    expect(response).to be_successful
    subscriptions = JSON.parse(response.body)
    expect(subscriptions.count).to eq(customer.subscriptions.count)
  end
end

