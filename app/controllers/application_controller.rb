class ApplicationController < ActionController::Base
  protect_from_forgery


  before_filter :authenticate

  def authenticate
		
		if Rails.env.production?
			authenticate_or_request_with_http_basic do |user, password|
	   	 user == ENV['USERNAME'] && password == ENV['PASSWORD']
	  	 end
	  end

  end


end
