class UsersController < ApplicationController
	expose :user

	def update
		respond_to do |format|
			if user.update_attributes(user_params)
				format.html { redirect_to root_path }
			else
				format.html { redirect_to account_path }
			end
		end
	end

	private

	def user_params
		params.require(:user).permit(:nickname)
	end
end