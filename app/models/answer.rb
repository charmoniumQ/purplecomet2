class Answer < ApplicationRecord
  validates :question_number, presence: true
  #validate_assocated :submission

  belongs_to :submission, inverse_of: :answers
end
