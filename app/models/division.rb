class Division < ApplicationRecord
  validates :longname, :shortname, presence: true
end
