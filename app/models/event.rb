class Event < ApplicationRecord
  validates :longtitle, :shorttitle, :startdatetime, :enddatetime, presence: true
end
