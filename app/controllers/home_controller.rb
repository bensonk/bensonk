class HomeController < ApplicationController
  def index
    @networks = Network.all
  end
end
