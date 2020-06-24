class ApplicationController < ActionController::Base

  def index
  	@annonces = Annonce.all.order("created_at DESC")
  	@annonces_small = @annonces.limit(3)
  end

end
