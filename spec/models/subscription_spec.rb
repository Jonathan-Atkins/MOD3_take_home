require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    it { should belong_to(:customer) }
    it { should have_many(:tea_subscriptions) }
    it { should have_many(:teas).through(:tea_subscriptions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_presence_of(:canceled) }
    it { should validate_presence_of(:frequency) }
  end

  describe 'default values' do
    it 'should set canceled to false by default' do
      subscription = Subscription.create(
        title: 'Monthly Green Tea Box',
        price: 15.99,
        frequency: 1.year,
        customer_id: 1
      )
      expect(subscription.canceled).to be_falsey
    end
  end

  describe 'custom validations' do
    it 'should ensure price is greater than 0' do
      subscription = Subscription.new(
        title: 'Monthly Green Tea Box',
        price: -5.99,
        frequency: 1.year,
        customer_id: 1
      )
      expect(subscription.valid?).to be_falsey
      expect(subscription.errors[:price]).to include('must be greater than 0')
    end
  end
end