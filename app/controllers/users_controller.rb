class UsersController < ApplicationController
  def new
    if logged_in?
      redirect_to root_path
    end

    @user = User.new
  end

  def create(user)
    @user = User.new(user.permit(:email, :password, :password_confirmation))

    if @user.save
      redirect_to root_path, notice: 'ユーザー登録に成功しました'
    else
      flash.now[:alert] = "ユーザー登録に失敗しました。再度お試しください"
      render :new
    end
  end
end
