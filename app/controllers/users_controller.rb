class UsersController < ApplicationController
  before_action :find_user

  def show
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
