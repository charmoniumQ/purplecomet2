class Supervisor < ApplicationRecord
  # https://github.com/plataformatec/devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :teams, inverse_of: :supervisor
  belongs_to :school

  validates :name, :phone, presence: true
  validates_associated :school

  # TODO: do phone better with internationalization
  # https://github.com/joost/phony_rails
  # Don't neglect the front-end form either
end
