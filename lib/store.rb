

class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :must_carry_apparel

  before_destroy :check_for_employees

  def check_for_employees
    if employees.exists?
      throw(:abort)
    end
  end

  def must_carry_apparel
    return unless !mens_apparel && !womens_apparel

    errors.add(:base, "Store must carry at least one of men's or women's apparel")
  end
end
