Customer.destroy_all
Tea.destroy_all
Subscription.destroy_all
TeaSubscription.destroy_all

# Customers
customer1 = Customer.create!(first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', address: '123 Elm St')
customer2 = Customer.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane.smith@example.com', address: '456 Oak St')
customer3 = Customer.create!(first_name: 'Michael', last_name: 'Johnson', email: 'michael.johnson@example.com', address: '789 Pine St')
customer4 = Customer.create!(first_name: 'Emily', last_name: 'Davis', email: 'emily.davis@example.com', address: '321 Maple St')
customer5 = Customer.create!(first_name: 'Sarah', last_name: 'Williams', email: 'sarah.williams@example.com', address: '654 Cedar St')
customer6 = Customer.create!(first_name: 'James', last_name: 'Brown', email: 'james.brown@example.com', address: '987 Birch St')
customer7 = Customer.create!(first_name: 'Olivia', last_name: 'Martinez', email: 'olivia.martinez@example.com', address: '432 Pine St')
customer8 = Customer.create!(first_name: 'David', last_name: 'Garcia', email: 'david.garcia@example.com', address: '876 Maple St')
customer9 = Customer.create!(first_name: 'Sophia', last_name: 'Wilson', email: 'sophia.wilson@example.com', address: '111 Oak St')
customer10 = Customer.create!(first_name: 'William', last_name: 'Taylor', email: 'william.taylor@example.com', address: '222 Elm St')

# Teas
tea1 = Tea.create!(title: 'Green Tea', description: 'A refreshing green tea', temperature: 80.0, brew_time: '2 minutes', price: 5.99)
tea2 = Tea.create!(title: 'Black Tea', description: 'A strong black tea', temperature: 90.0, brew_time: '4 minutes', price: 6.99)
tea3 = Tea.create!(title: 'Chamomile Tea', description: 'A calming chamomile tea', temperature: 70.0, brew_time: '5 minutes', price: 7.99)
tea4 = Tea.create!(title: 'Earl Grey', description: 'A fragrant tea with hints of bergamot', temperature: 85.0, brew_time: '3 minutes', price: 6.49)
tea5 = Tea.create!(title: 'Oolong Tea', description: 'A traditional Chinese tea with floral notes', temperature: 85.0, brew_time: '5 minutes', price: 7.49)
tea6 = Tea.create!(title: 'Mint Tea', description: 'A refreshing mint tea', temperature: 75.0, brew_time: '4 minutes', price: 5.49)
tea7 = Tea.create!(title: 'Chai Tea', description: 'A spiced tea with cinnamon and cardamom', temperature: 90.0, brew_time: '5 minutes', price: 6.99)
tea8 = Tea.create!(title: 'Lemon Ginger Tea', description: 'A zesty tea with lemon and ginger', temperature: 80.0, brew_time: '4 minutes', price: 6.29)
tea9 = Tea.create!(title: 'Jasmine Tea', description: 'A delicate jasmine tea', temperature: 85.0, brew_time: '4 minutes', price: 6.79)
tea10 = Tea.create!(title: 'Pu-erh Tea', description: 'A rich and earthy tea', temperature: 95.0, brew_time: '5 minutes', price: 8.49)

# Subscriptions
subscription1 = Subscription.create!(title: 'Monthly Green Tea Box', price: 15.99, canceled: false, frequency: 1.month)
subscription2 = Subscription.create!(title: 'Quarterly Black Tea Box', price: 25.99, canceled: false, frequency: 2.year)
subscription3 = Subscription.create!(title: 'Bi-Annual Oolong Tea Box', price: 29.99, canceled: false, frequency: 6.months)
subscription4 = Subscription.create!(title: 'Monthly Chai Tea Box', price: 19.99, canceled: false, frequency: 1.month)
subscription5 = Subscription.create!(title: 'Quarterly Herbal Tea Box', price: 23.99, canceled: false, frequency: 3.months)
subscription6 = Subscription.create!(title: 'Monthly Jasmine Tea Box', price: 16.49, canceled: false, frequency: 1.month)
subscription7 = Subscription.create!(title: 'Bi-Annual Pu-erh Tea Box', price: 35.99, canceled: false, frequency: 6.months)
subscription8 = Subscription.create!(title: 'Monthly Mint Tea Box', price: 18.99, canceled: false, frequency: 1.month)
subscription9 = Subscription.create!(title: 'Quarterly Chamomile Tea Box', price: 27.99, canceled: false, frequency: 3.months)
subscription10 = Subscription.create!(title: 'Monthly Earl Grey Tea Box', price: 22.99, canceled: false, frequency: 1.month)

# CustomerSubscriptions
CustomerSubscription.create!(subscription_id: subscription1.id, customer_id: customer1.id)
CustomerSubscription.create!(subscription_id: subscription2.id, customer_id: customer2.id)
CustomerSubscription.create!(subscription_id: subscription3.id, customer_id: customer3.id)
CustomerSubscription.create!(subscription_id: subscription4.id, customer_id: customer4.id)
CustomerSubscription.create!(subscription_id: subscription5.id, customer_id: customer5.id)
CustomerSubscription.create!(subscription_id: subscription6.id, customer_id: customer6.id)
CustomerSubscription.create!(subscription_id: subscription7.id, customer_id: customer7.id)
CustomerSubscription.create!(subscription_id: subscription8.id, customer_id: customer8.id)
CustomerSubscription.create!(subscription_id: subscription9.id, customer_id: customer9.id)
CustomerSubscription.create!(subscription_id: subscription10.id, customer_id: customer10.id)

# TeaSubscriptions
TeaSubscription.create!(subscription_id: subscription1.id, tea_id: tea1.id)
TeaSubscription.create!(subscription_id: subscription2.id, tea_id: tea2.id)
TeaSubscription.create!(subscription_id: subscription2.id, tea_id: tea3.id)
TeaSubscription.create!(subscription_id: subscription3.id, tea_id: tea5.id)
TeaSubscription.create!(subscription_id: subscription4.id, tea_id: tea7.id)
TeaSubscription.create!(subscription_id: subscription5.id, tea_id: tea4.id)
TeaSubscription.create!(subscription_id: subscription6.id, tea_id: tea6.id)
TeaSubscription.create!(subscription_id: subscription7.id, tea_id: tea10.id)
TeaSubscription.create!(subscription_id: subscription8.id, tea_id: tea6.id)
TeaSubscription.create!(subscription_id: subscription9.id, tea_id: tea3.id)
TeaSubscription.create!(subscription_id: subscription10.id, tea_id: tea8.id)

puts "Seeding complete! 🌳"