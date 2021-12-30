class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(new_user_path, notice: "ログインに成功しました")
    else
      flash.now[:alert] = "ログインに失敗しました"
      render :new
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: "ログアウトしました")
  end
end