class HomeController < ActionController::Base
  def show
    @ads =Ad.all
  end
end
