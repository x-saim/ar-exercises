require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true

  before_create :generate_password    #ideal
  #after_create :generate_password    #not ideal
  #before_save :generate_password     #not ideal

  private

  def generate_password
    self.password = SecureRandom.hex(4) # Generate a random 8-character string
    
    #random_password = SecureRandom.hex(4) # Generate a random 8-character string
    #update_column(:password, random_password)
  end

end
