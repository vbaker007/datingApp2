class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:name, :gender, :age, :occupation, :heterosexual, :age_age_pref, :zipcode, :hobbies)
  end
end
