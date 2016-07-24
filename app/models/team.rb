class Team < ApplicationRecord
  has_many :contestants, inverse_of: :team

  belongs_to :supervisor, inverse_of: :teams
  belongs_to :event
  belongs_to :division
  belongs_to :submission

  validates :name, presence: true

  validates_associated :school, :event, :division, :supervisor, :submission
end
