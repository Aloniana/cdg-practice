class User < ApplicationRecord

  validates :email, presence: true, email: true, length: { maximum: 100 }
  validates :first_name, presence: true, length: { maximum: 100 }
  validates :last_name, presence: true, length: { maximum: 150 }

  def formatted_name
    "#{first_name} #{last_name}"
  end
end
