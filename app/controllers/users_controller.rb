class UsersController < ApplicationController
  before_action :find_user, only: [:show_user_microposts]

  def index
    @users = User.all
  end


  def show_user_microposts
    @microposts = @user.microposts.all
    render "microposts/index"
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id)
  end
end
