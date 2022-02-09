class ApplicationController < ActionController::Base
  def current_user
    User.first
  end
  # def current_food
  #   Food.all
  # end
end
