class UsersController < ApplicationController
	before_action :authenticate_user!



	private
	def user_params
		#@user.update_attributes(user_params)
		params.require(:user).permit(:email, :username, :password, :password_confirmation)
	end
end