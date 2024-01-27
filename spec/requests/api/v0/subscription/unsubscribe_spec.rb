require 'rails_helper'

RSpec.describe 'Subscription unsubscribe' do
  before :each do
    load_test_data
  end

  it 'Happy path changes subscription status to 0' do
    subscription = @subscription1
    expect(subscription.status).to eq('active')

    put "/api/v0/subscriptions/#{subscription.id}/unsubscribe", params: {}.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }

    subscription.reload
    expect(subscription.status).to eq('cancelled')

    expect(response).to be_successful
  end
end

