class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy, :show_card]
  before_action :check_admin_or_current, only: [:show, :edit, :update]
  before_action :prevent_new, only: [:new, :create]

  # GET /professors
  # GET /professors.json
  def index
    @curr_user = current_user
    if current_user.admin
      @professors = Professor.all
    else
      @professors = [current_user.professor]
    end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
  end

  # GET /professors/new
  def new
    @professor = Professor.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST /professors
  # POST /professors.json
  def create
    @professor = Professor.new(professor_params)

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor was successfully created.' }
        format.json { render :show, status: :created, location: @professor }
      else
        format.html { render :new }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professors/1
  # PATCH/PUT /professors/1.json
  def update
    respond_to do |format|
      if @professor.update(professor_params)
        format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor }
      else
        format.html { render :edit }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroys
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url, notice: 'Professor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # SHOW PROFESSOR CARD
  def show_card
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_params
      params.require(:professor).permit(:name, :father_last_name, :mother_last_name, :professor_type, :email, :office, :resume)
    end

    def check_admin_or_current
      unless current_user.admin || current_user.id.to_s == Professor.find(params[:id]).user_id.to_s
        redirect_to root_path
      end
    end

    def prevent_new
      redirect_to root_path
    end
end
