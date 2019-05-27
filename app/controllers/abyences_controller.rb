class AbyencesController < ApplicationController
  before_action :set_abyence, only: [:show, :edit, :update, :destroy]

  # GET /abyences
  # GET /abyences.json
  def index
    @abyences = Abyence.all
  end

  # GET /abyences/1
  # GET /abyences/1.json
  def show
  end

  # GET /abyences/new
  def new
    @abyence = Abyence.new
  end

  # GET /abyences/1/edit
  def edit
  end

  # POST /abyences
  # POST /abyences.json
  def create
    @abyence = Abyence.new(abyence_params)

    respond_to do |format|
      if @abyence.save
        format.html { redirect_to @abyence, notice: 'Abyence was successfully created.' }
        format.json { render :show, status: :created, location: @abyence }
      else
        format.html { render :new }
        format.json { render json: @abyence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abyences/1
  # PATCH/PUT /abyences/1.json
  def update
    respond_to do |format|
      if @abyence.update(abyence_params)
        format.html { redirect_to @abyence, notice: 'Abyence was successfully updated.' }
        format.json { render :show, status: :ok, location: @abyence }
      else
        format.html { render :edit }
        format.json { render json: @abyence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abyences/1
  # DELETE /abyences/1.json
  def destroy
    @abyence.destroy
    respond_to do |format|
      format.html { redirect_to abyences_url, notice: 'Abyence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abyence
      @abyence = Abyence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abyence_params
      params.require(:abyence).permit(:Client_id, :insurer_id, :reminder_date, :reminder_content, :renewal_date, :underwriter_id)
    end
end
