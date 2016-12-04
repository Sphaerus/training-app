class AccountsController < ApplicationController
	def show
		@account_form = ::AccountForm.new(current_user)
	end
end