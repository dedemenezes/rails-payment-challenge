puts 'Cleaning DB...'
Customer.destroy_all
Store.destroy_all

puts 'Populating DB...'
Customer.create!(
  password: '123456',
  recovery_password: 'base_customer',
  email: 'customer@pic.pay',
  first_name: 'Customer',
  last_name: 'picpay',
  cpf: '111.222.333-04'
)

p Customer.last

Store.create!(
  email: 'store@pic.pay',
  password: '123456',
  recovery_password: 'base_store',
  name: 'StorePicPay',
  cnpj: '22.333.444/0001-44'
)

p Store.last
puts 'Done zo/'
