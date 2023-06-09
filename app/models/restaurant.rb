class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: '%<value> is not a valid category' }
end
