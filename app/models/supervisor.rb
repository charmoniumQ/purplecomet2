class Supervisor < ApplicationRecord
  # https://github.com/plataformatec/devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :confirmable

  validates :name, :schoolname, :phone, :street,
            :city, :state, :country,
            presence: true
  
  # TODO: do phone better with internationalization
  # https://github.com/joost/phony_rails
  # Don't neglect the front-end form either

  # TODO: better street address internatoinalization
  # Should zipcode go anywhere
end
