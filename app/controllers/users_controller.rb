class UsersController < ApplicationController
  
  # GET /users/new
  def new
    @user = User.new
  end
  # POST /users/new
  def create
    @user = User.new
    @user.name = params[:user][:name]  
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    puts "user name: #{@user.name}, user password: #{@user.password}" 
    redirect_to articles_path if @user.save
  end
  
  # GET /users/login
  def login
  end
  
  # POST /users/login
  def login_process
    @user = User.find params[:user][:name] 
    if @user.password == params[:user][:password]
      give_token
    else
      redirect_to articles_path
    end
  end
end
