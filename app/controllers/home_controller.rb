class HomeController < ApplicationController
  before_filter :require_logged_user,
    :only => [:index]
	def index
		
	end
end
