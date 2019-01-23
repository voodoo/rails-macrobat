class PressuresController < ApplicationController
  before_action :set_pressure, only: [:show, :edit, :update, :destroy]

  # GET /pressures
  # GET /pressures.json
  def index
    @pressures = Pressure.all
  end

  # GET /pressures/1
  # GET /pressures/1.json
  def show
  end

  # GET /pressures/new
  def new
    @pressure = Pressure.new(sys: 120, dias: 80, pulse: 80)
  end

  # GET /pressures/1/edit
  def edit
  end

  # POST /pressures
  # POST /pressures.json
  def create
    @pressure = current_user.pressures.new(pressure_params)

    respond_to do |format|
      if @pressure.save
        format.html { redirect_to @pressure.user, notice: 'Pressure was successfully created.' }
        format.json { render :show, status: :created, location: @pressure }
      else
        format.html { render :new }
        format.json { render json: @pressure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pressures/1
  # PATCH/PUT /pressures/1.json
  def update
    respond_to do |format|
      if @pressure.update(pressure_params)
        format.html { redirect_to @pressure.user, notice: 'Pressure was successfully updated.' }
        format.json { render :show, status: :ok, location: @pressure }
      else
        format.html { render :edit }
        format.json { render json: @pressure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pressures/1
  # DELETE /pressures/1.json
  def destroy
    user = @pressure.user
    @pressure.destroy
    respond_to do |format|
      format.html { redirect_to user, notice: 'Pressure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pressure
      @pressure = current_user.pressures.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pressure_params
      params.require(:pressure).permit(:user_id, :sys, :dias, :pulse, :date)
    end
end
