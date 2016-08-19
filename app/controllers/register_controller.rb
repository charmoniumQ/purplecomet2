class RegisterController < ApplicationController
  def index
  end

  def search
    school = School.search(params[:search])
    respond_to do |format|
      format.json { render json: school }
    end
  end
end
