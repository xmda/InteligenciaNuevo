require 'fast_stemmer'
require 'classifier.rb'
class CentroAtencionsController < ApplicationController
  before_action :set_centro_atencion, only: [:show, :edit, :update, :destroy]

  # GET /centro_atencions
  # GET /centro_atencions.json
  def index
    @centro_atencions = CentroAtencion.all
  end

  # GET /centro_atencions/1
  # GET /centro_atencions/1.json
  def show
  end

  # GET /centro_atencions/new
  def new
    @centro_atencion = CentroAtencion.new
  end

  # GET /centro_atencions/1/edit
  def edit
  end

  # POST /centro_atencions
  # POST /centro_atencions.json
  def create
    @centro_atencion = CentroAtencion.new(centro_atencion_params)
    #@hola = 'prueba en donde estoy'
    respond_to do |format|
      if @centro_atencion.save
        format.html { redirect_to @centro_atencion, notice: 'Centro atencion was successfully created.' }
        format.json { render :show, status: :created, location: @centro_atencion }
      else
        format.html { render :new }
        format.json { render json: @centro_atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centro_atencions/1
  # PATCH/PUT /centro_atencions/1.json
  def update
    respond_to do |format|
      if @centro_atencion.update(centro_atencion_params)
        format.html { redirect_to @centro_atencion, notice: 'Centro atencion was successfully updated.' }
        format.json { render :show, status: :ok, location: @centro_atencion }
      else
        format.html { render :edit }
        format.json { render json: @centro_atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centro_atencions/1
  # DELETE /centro_atencions/1.json
  def destroy
    @centro_atencion.destroy
    respond_to do |format|
      format.html { redirect_to centro_atencions_url, notice: 'Centro atencion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro_atencion
      @centro_atencion = CentroAtencion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centro_atencion_params
      params.require(:centro_atencion).permit(:categoria, :servicio)
    end
end
