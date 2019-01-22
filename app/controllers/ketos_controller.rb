class KetosController < ApplicationController
  before_action :set_keto, only: [:show, :edit, :update, :destroy]

  # GET /ketos
  # GET /ketos.json
  def index
    @ketos = Keto.all
  end

  # GET /ketos/1
  # GET /ketos/1.json
  def show
  end

  # GET /ketos/new
  def new
    @keto = Keto.new(reading: 0.5)
  end

  # GET /ketos/1/edit
  def edit
  end

  # POST /ketos
  # POST /ketos.json
  def create
    @keto = current_user.ketos.new(keto_params)

    respond_to do |format|
      if @keto.save
        format.html { redirect_to @keto.user, notice: 'Keto was successfully created.' }
        format.json { render :show, status: :created, location: @keto }
      else
        format.html { render :new }
        format.json { render json: @keto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ketos/1
  # PATCH/PUT /ketos/1.json
  def update
    respond_to do |format|
      if @keto.update(keto_params)
        format.html { redirect_to @keto.user, notice: 'Keto was successfully updated.' }
        format.json { render :show, status: :ok, location: @keto }
      else
        format.html { render :edit }
        format.json { render json: @keto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ketos/1
  # DELETE /ketos/1.json
  def destroy
    user = @keto.user
    @keto.destroy
    respond_to do |format|
      format.html { redirect_to user, notice: 'Keto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keto
      @keto = Keto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keto_params
      params.require(:keto).permit(:user_id, :reading)
    end
end
