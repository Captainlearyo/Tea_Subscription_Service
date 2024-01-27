class Api::V0::SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      render json: @subscription, status: :created, serializer: SubscriptionSerializer
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  def unsubscribe
    @subscription = Subscription.find(params[:id])
    if @subscription.active?
      @subscription.toggle_status
      render json: @subscription, status: :ok, serializer: SubscriptionSerializer
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:customer_id, :tea_id, :title, :price, :frequency, :status)
  end
end

