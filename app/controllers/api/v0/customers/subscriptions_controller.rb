class Api::V0::Customers::SubscriptionsController < ApplicationController
  before_action :set_customer

  def index
    @subscriptions = @customer.subscriptions
    render json: @subscriptions, status: :ok, each_serializer: SubscriptionSerializer
  end

  private

  def set_customer
    @customer = Customer.find(params[:customer_id])
  end
end
