class Contestant < ApplicationRecord
  # https://github.com/plataformatec/devise
  # Design choices:
  # Require users to register through a supervisor's account page
  devise :database_authenticatable, :rememberable, :trackable, :validatable,
         :registerable, :recoverable, :confirmable

  belongs_to :team, inverse_of: :contestants
  belongs_to :shcool

  validates :name, :grade, presence: true
  validates_associated :team, :school
end
