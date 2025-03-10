Customer.destroy_all
Tea.destroy_all
Subscription.destroy_all
TeaSubscription.destroy_all

customer1 = Customer.create!(first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', address: '123 Elm St')
customer2 = Customer.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane.smith@example.com', address: '456 Oak St')

tea1 = Tea.create!(title: 'Green Tea', description: 'A refreshing green tea', temperature: 80.0, brew_time: '2 minutes', price: 5.99)
tea2 = Tea.create!(title: 'Black Tea', description: 'A strong black tea', temperature: 90.0, brew_time: '4 minutes', price: 6.99)
tea3 = Tea.create!(title: 'Chamomile Tea', description: 'A calming chamomile tea', temperature: 70.0, brew_time: '5 minutes', price: 7.99)

subscription1 = Subscription.create!(
  title: 'Monthly Green Tea Box',
  price: 15.99,
  canceled: false,
  frequency: 1.month,
)

subscription2 = Subscription.create!(
  title: 'Quarterly Black Tea Box',
  price: 25.99,
  canceled: false,
  frequency: 2.year,
)

CustomerSubscription.create!(subscription_id: subscription1.id, customer_id: customer1.id)
CustomerSubscription.create!(subscription_id: subscription1.id, customer_id: customer2.id)

TeaSubscription.create!(subscription_id: subscription1.id, tea_id: tea1.id)
TeaSubscription.create!(subscription_id: subscription2.id, tea_id: tea2.id)
TeaSubscription.create!(subscription_id: subscription2.id, tea_id: tea3.id)
puts "Seeding complete! 🌳"