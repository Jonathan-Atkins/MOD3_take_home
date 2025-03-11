require 'rails_helper'

RSpec.describe Tea, type: :model do
  before(:each) do
    @tea = Tea.create!(title: 'Green Tea', description: 'A refreshing green tea', temperature: 80.0, brew_time: '2 minutes', price: 5.99)
    @subscription1 = Subscription.create!(title: 'Monthly Green Tea Box', price: 15.99, canceled: false, frequency: 1.year)
    @subscription2 = Subscription.create!(title: 'Quarterly Green Tea Box', price: 20.99, canceled: false, frequency: 3.months)

    TeaSubscription.create!(tea_id: @tea.id, subscription_id: @subscription1.id)
    TeaSubscription.create!(tea_id: @tea.id, subscription_id: @subscription2.id)
  end

  describe 'associations' do
    it 'has many tea_subscriptions' do
      expect(@tea.tea_subscriptions.count).to eq(2)  # Should be 2 as we created 2 subscriptions for this tea
    end

    it 'has many subscriptions through tea_subscriptions' do
      expect(@tea.subscriptions.count).to eq(2)  # Should be 2 subscriptions associated with this tea
    end
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(@tea).to be_valid
    end

    it 'is invalid without a title' do
      @tea.title = nil
      expect(@tea).to_not be_valid
    end

    it 'is invalid without a price' do
      @tea.price = nil
      expect(@tea).to_not be_valid
    end
  end
end