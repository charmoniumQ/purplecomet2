class Address < ApplicationRecord
  validates :street, :country, presence: true
end
