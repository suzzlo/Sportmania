class HomeController < ApplicationController
  def index

    if current_user
      @championships = current_user.championships
    else
      @championships = Championship.all
    end
  end
end
