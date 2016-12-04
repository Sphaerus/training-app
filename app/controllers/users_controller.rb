class UsersController < ApplicationController
	expose :user

	def update
		@account_form = ::AccountForm.new(current_user)
		respond_to do |format|
			if @account_form.submit(user_params)
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