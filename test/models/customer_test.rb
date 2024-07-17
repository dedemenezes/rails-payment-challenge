require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'validates CPF' do
    user = Customer.new cpf: ''
    user.valid?
    assert_includes user.errors, :cpf

    user.cpf = '122.312.333-3'
    user.valid?
    assert_includes user.errors, :cpf, 'invalid format'
  end

  test 'clean CPF before adding to DB' do
    user = customers(:one)
    user.update!(cpf: '111.222.333-44', password: 'password')
    assert_equal '11122233344', user.cpf
  end
end
