class ApplicationController < ActionController::Base
  def current_user
    User.last
  end
  # def current_food
  #   Food.all
  # end
end
