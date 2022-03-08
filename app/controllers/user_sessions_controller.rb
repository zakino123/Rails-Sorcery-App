class UserSessionsController < ApplicationController
  def new
  end

  def create(email:, password:)
    @user = login(email, password)

    if @user
      redirect_back_or_to(root_path)
    else
      flash.now[:alert] = "サインインに失敗しました。再度お試しください"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'サインアウトしました'
  end
end
