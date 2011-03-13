class HomeController < ApplicationController
  def index
    @blurbs = Blurb.all
    @networks = Network.all
  end
end
