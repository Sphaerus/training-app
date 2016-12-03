class HomeController < ApplicationController
	before_action :authenticate_user!
	expose :topics, ->{ Topic.all }
	
	def index
		
	end
end