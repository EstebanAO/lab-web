class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:new, :show, :edit, :update, :create]
  # GET /users
  # GET /users.json
  def index
    @curr_user = current_user
    if !current_user.admin
      @users = [current_user]
    else
      @users = User.all
    end

  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @curr_user = current_user
    if current_user.admin
      @user = User.new
    else
      redirect_to root_path
    end
  end

  # GET /users/1/edit
  def edit
    @curr_user = current_user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    prof = Professor.new
    prof.name = @user.email
    prof.email = @user.email
    @user.professor = prof
    respond_to do |format|
      if @user.save && prof.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if params[:id] == 'sign_out'
        sign_out current_user
        return
      end
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      if current_user.admin
        params.require(:user).permit(:password, :admin, :email, :password_confirmation)
      else
        params.require(:user).permit(:password, :email, :password_confirmation)
      end
    end

    def check_admin
      unless current_user.admin || current_user.id.to_s == params[:id].to_s
        flash[:notice] = "You may only view your own products."
        redirect_to root_path
      end
    end
end
