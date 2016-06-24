require 'myclock'

class HomeController < ApplicationController
  def index
    @time = MyClock.get_time
    @page_title = 'Purple Comet<i>!</i> Math Meet'
  end
end
