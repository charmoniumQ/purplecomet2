class School < ApplicationRecord
  belongs_to :address

  validates :name, presence: true
  validates_associated :address

  def self.search(terms)
    terms.downcase!

    # search for substring
    School.all.each do |school|
      if school[:name].downcase.index(terms)
        return school
      end
    end

    # search for all terms, out of order
    terms_arr = terms.split(' ')
    School.all.each do |school|
      if terms_arr.all? { |term| !school[:name].downcase.index(term).nil? }
        return school
      end
    end

    # not found
    return nil
  end
end
