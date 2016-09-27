class RegisterController < ApplicationController
  def index
  end

  def search
    # does a keyword search for the paremeter search
    # returns JSON for one school that could fit that category
    
    search_term = params[:search]
    if not search_term.nil?
      schools = School.search(search_term).map do |school|
        {
          name: school[:name],
          city: school.address[:city],
          state: school.address[:state],
          country: school.address[:country],
          zip: school.address[:zip]
        }
      end
      render json: schools
    end
  end
end
