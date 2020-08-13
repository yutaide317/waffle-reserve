class Order < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :signup_at, presence: true
end
