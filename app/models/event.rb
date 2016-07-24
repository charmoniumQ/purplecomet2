class Event < ApplicationRecord
  validate :longtitle, :shorttitle, :startdatetime, :enddatetime, presence: true
end
