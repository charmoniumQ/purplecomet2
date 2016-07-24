class School < ApplicationRecord
  belongs_to :address

  validates :name, presence: true
  validates_associated :address
end
