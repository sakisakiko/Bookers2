class UsersController < ApplicationController

  def index
    @users=User.all
    @books=@user.books
  end
  
  def show
    @user=User.find(params[:id])
    @books=@user.books
  end


  def edit
    @user=User.find(params[:id])
  end
end
