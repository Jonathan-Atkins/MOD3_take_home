require 'rails_helper'

RSpec.describe CustomerSubscription, type: :model do
  before(:each) do
    @customer = Customer.create!(first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', address: '123 Elm St')
    @subscription = Subscription.create!(title: 'Monthly Green Tea Box', price: 15.99, canceled: false, frequency: 1.year)
  end

  describe 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:subscription) }
  end

  describe 'validations' do
    it { should validate_presence_of(:customer) }
    it { should validate_presence_of(:subscription) }
  end

  describe 'creating a customer subscription' do
    it 'can create a customer subscription successfully' do
      customer_subscription = CustomerSubscription.create!(customer_id: @customer.id, subscription_id: @subscription.id)

      expect(customer_subscription).to be_valid
      expect(customer_subscription.customer).to eq(@customer)
      expect(customer_subscription.subscription).to eq(@subscription)
    end
  end

  describe 'handling invalid customer subscription' do
    it 'is invalid without a customer' do
      customer_subscription = CustomerSubscription.new(subscription_id: @subscription.id)
      
      expect(customer_subscription).to_not be_valid
      expect(customer_subscription.errors[:customer]).to include("must exist")
    end

    it 'is invalid without a subscription' do
      customer_subscription = CustomerSubscription.new(customer_id: @customer.id)
      
      expect(customer_subscription).to_not be_valid
      expect(customer_subscription.errors[:subscription]).to include("must exist")
    end
  end
end