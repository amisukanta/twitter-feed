class FeedsController < ApplicationController
  
  def index
  	@feeds = Feed.paginate(:page => params[:page], :per_page => 500).order('created_at DESC')
  end
end
