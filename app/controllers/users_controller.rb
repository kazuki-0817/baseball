class UsersController < ApplicationController
    before_action :login_required
  def index
    if params[:team_id]
      @team=Team.find(params[:team_id])
      @users=@team.users
    else
      @users=User.all
    end
  end

  def show
    @user=User.find(params[:id])
  end

  def edit
    @user=User.find(params[:id])

  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username,:team_id,:email,:profile,:profile_image)
  end
end
