class HomeController < ApplicationController
  def dashboard
    @users = User.all
  end
end
