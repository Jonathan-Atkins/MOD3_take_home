class Api::V1::SubscriptionsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity

  def index
    subscriptions = Subscription.all
    render json: SubscriptionSerializer.new(subscriptions), status: :ok
  end

  def show
    subscription = Subscription.find(params[:id])
    render json: SubscriptionSerializer.new(subscription)
  end

  def destroy
    subscription = Subscription.find(params[:id])
    subscription.update(canceled: true) 
    render json: SubscriptionSerializer.new(subscription), status: :ok
  end

  private

  def record_not_found(exception)
    error_serializer = ErrorSerializer.new(exception, 404)
    render json: error_serializer.format_error, status: :not_found
  end

  def unprocessable_entity(exception)
    error_serializer = ErrorSerializer.new(exception, 422)
    render json: error_serializer.format_error, status: :unprocessable_entity
  end
end