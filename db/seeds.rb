# frozen_string_literal: true

Category.create(user_id: 1, name: 'Household')
Category.create(user_id: 1, name: 'Business')
Category.create(user_id: 1, name: 'Education')
Category.create(user_id: 1, name: 'Entertainment')
Category.create(user_id: 1, name: 'Health')
Category.create(user_id: 1, name: 'Transportation')

Payment.create(user_id: 1, name: 'Rent', amount: 1000)
Payment.create(user_id: 1, name: 'Electricity', amount: 100)
Payment.create(user_id: 1, name: 'Water', amount: 50)
Payment.create(user_id: 1, name: 'Gas', amount: 50)
Payment.create(user_id: 1, name: 'Internet', amount: 50)
Payment.create(user_id: 1, name: 'Phone', amount: 50)
Payment.create(user_id: 1, name: 'Cable', amount: 50)
Payment.create(user_id: 1, name: 'Groceries', amount: 50)
