class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = List.new(user_params)
    if @user.save
      redirect_to  users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end

    def destroy
      @user = List.find(params[:id])
      @user.destroy
      redirect_to users_path
    end




  private
  def user_params
    params.require(:user).permit(:name)
  end

end


end
