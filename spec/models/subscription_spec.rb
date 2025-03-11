require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    it { should have_many(:tea_subscriptions) }
    it { should have_many(:teas).through(:tea_subscriptions) }
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:customers).through(:customer_subscriptions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:frequency) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_uniqueness_of(:title) }
  end

  describe 'default values' do
    it 'should set canceled to false by default' do
      subscription = Subscription.create(
        title: 'Monthly Green Tea Box',
        price: 15.99,
        frequency: 1.year
      )
      expect(subscription.canceled).to be_falsey
    end
  end

  describe 'custom validations' do
    it 'should ensure price is greater than 0' do
      subscription = Subscription.new(
        title: 'Monthly Green Tea Box',
        price: -5.99,
        frequency: 1.year
      )
      expect(subscription.valid?).to be_falsey
      expect(subscription.errors[:price]).to include('must be greater than 0')
    end
  end

  describe 'creation' do
    it 'creates a valid subscription' do
      subscription = Subscription.new(
        title: 'Quarterly Black Tea Box',
        price: 25.99,
        frequency: 3.months
      )
      expect(subscription.save).to be_truthy
    end

    it 'does not create a subscription without required fields' do
      subscription = Subscription.new(
        title: nil, # missing title
        price: 15.99,
        frequency: 1.year
      )
      expect(subscription.valid?).to be_falsey
    end
  end
end