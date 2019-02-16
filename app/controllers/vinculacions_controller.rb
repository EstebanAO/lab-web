class VinculacionsController < ApplicationController
  before_action :set_vinculacion, only: [:show, :edit, :update, :destroy]

  # GET /vinculacions
  # GET /vinculacions.json
  def index
    @vinculacions = Vinculacion.all
  end

  # GET /vinculacions/1
  # GET /vinculacions/1.json
  def show
  end

  # GET /vinculacions/new
  def new
    @vinculacion = Vinculacion.new
  end

  # GET /vinculacions/1/edit
  def edit
  end

  # POST /vinculacions
  # POST /vinculacions.json
  def create
    @vinculacion = Vinculacion.new(vinculacion_params)

    respond_to do |format|
      if @vinculacion.save
        format.html { redirect_to @vinculacion, notice: 'Vinculacion was successfully created.' }
        format.json { render :show, status: :created, location: @vinculacion }
      else
        format.html { render :new }
        format.json { render json: @vinculacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinculacions/1
  # PATCH/PUT /vinculacions/1.json
  def update
    respond_to do |format|
      if @vinculacion.update(vinculacion_params)
        format.html { redirect_to @vinculacion, notice: 'Vinculacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @vinculacion }
      else
        format.html { render :edit }
        format.json { render json: @vinculacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinculacions/1
  # DELETE /vinculacions/1.json
  def destroy
    @vinculacion.destroy
    respond_to do |format|
      format.html { redirect_to vinculacions_url, notice: 'Vinculacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinculacion
      @vinculacion = Vinculacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vinculacion_params
      params.require(:vinculacion).permit(:nombre, :descripcion, :participantes, :fecha_inicio, :fecha_fin, :tipo, :url)
    end
end
