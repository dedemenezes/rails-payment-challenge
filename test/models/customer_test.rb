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

    user.cpf = '122.312.333-33'
    user.valid?
    assert_equal '12231233333', user.cpf
  end
end
