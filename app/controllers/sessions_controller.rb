class SessionsController < ApplicationController
  def create
    auth = request.env['rack.auth']
    @auth = Authorization.find_from_hash(auth)
    unless @auth
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user

    flash[:notice] = "Welcome, #{current_user.name}"
    redirect_home
  end

  def destroy
    self.logout
    flash[:notice] = "You are logged out."
    redirect_home
  end

  def new
    # TODO
  end

  private
  def redirect_home
    redirect_to :controller => :home, :action => :index
  end
end
