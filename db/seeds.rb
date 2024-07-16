puts 'Cleaning DB...'
Customer.destroy_all

puts 'Populating DB...'
Customer.create!(
  password: '123456',
  password_recovery: 'base_customer',
  email: 'customer@pic.pay',
  first_name: 'Customer',
  last_name: 'picpay',
  cpf: '111.222.333-04'
)
puts 'Done zo/'
