class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.js
      else
        format.html { render "index" }
        format.js { render :errors }
      end
    end
  end

  private

    def users_params
      params.require(:user).permit(:name)
    end

end
