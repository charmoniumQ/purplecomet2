class Submission < ApplicationRecord
  has_many :answers, inverse_of: :submission
end
