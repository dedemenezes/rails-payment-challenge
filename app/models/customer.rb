class Customer < ApplicationRecord
  validates :email, :first_name, :last_name, :cpf, :balance, presence: true
  validates :cpf, format: { with: /\A\d{11}\z/ }
  validates :cpf, :email, uniqueness: { case_sensitive: false }
  validates :balance, numericality: { only_integer: true }

  before_validation :clean_cpf
  # before_validation :stop

  private

  def clean_cpf
    return if cpf.empty?

    self.cpf = cpf.gsub('-', '').gsub('.', '').strip
  end

  def stop
    binding.b
  end
end
