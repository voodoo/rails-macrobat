class GlucosesController < ApplicationController
  before_action :set_glucose, only: [:show, :edit, :update, :destroy]

  # GET /glucoses
  # GET /glucoses.json
  def index
    @glucoses = Glucose.all
  end

  # GET /glucoses/1
  # GET /glucoses/1.json
  def show
  end

  # GET /glucoses/new
  def new
    @glucose = Glucose.new
  end

  # GET /glucoses/1/edit
  def edit
  end

  # POST /glucoses
  # POST /glucoses.json
  def create
    @glucose = Glucose.new(glucose_params)

    respond_to do |format|
      if @glucose.save
        format.html { redirect_to @glucose.user, notice: 'Glucose was successfully created.' }
        format.json { render :show, status: :created, location: @glucose }
      else
        format.html { render :new }
        format.json { render json: @glucose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glucoses/1
  # PATCH/PUT /glucoses/1.json
  def update
    respond_to do |format|
      if @glucose.update(glucose_params)
        format.html { redirect_to @glucose.user, notice: 'Glucose was successfully updated.' }
        format.json { render :show, status: :ok, location: @glucose }
      else
        format.html { render :edit }
        format.json { render json: @glucose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glucoses/1
  # DELETE /glucoses/1.json
  def destroy
    @glucose.destroy
    respond_to do |format|
      format.html { redirect_to glucoses_url, notice: 'Glucose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glucose
      @glucose = Glucose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glucose_params
      params.require(:glucose).permit(:user_id, :reading)
    end
end
