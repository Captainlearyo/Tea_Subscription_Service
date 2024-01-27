require 'rails_helper'

RSpec.describe 'Subscription create' do
  before :each do
    load_test_data
  end
  it 'Happey path with valid parameters creates a new subscription' do
    new_subscription = {
      "customer_id": @customer2.id,
      "tea_id": @tea1.id,
      "title": "Tea 1 Subscription",
      "price": 10,
      "frequency": 1,
      "status": 1
    }

    post "/api/v0/subscriptions", params: new_subscription.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }

    expect(response).to be_successful
    expect(response.status).to eq(201)
    
  end

  
  it 'Sad path returns unprocessable entity status' do

    new_subscription = {
      "customer_id": 4,
      "tea_id": @tea1.id,
      "title": "Tea 1 Subscription",
      "price": 10,
      "frequency": 1,
      "status": 1
    }

    post "/api/v0/subscriptions", params: new_subscription.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
