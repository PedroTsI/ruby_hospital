class MedicsController < ApplicationController
  before_action :set_medic, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  invisible_captcha only: [:create, :update], honeypot: :subtitle

  # GET /medics or /medics.json
  def index
    if params[:query].present?
      @medics = Medic.where("nome like ?","%#{params[:query]}%").order(:nome).page(params[:page]).per(10)
    else
      @medics = Medic.order(:nome).page(params[:page]).per(10)
    end
  end

  # GET /medics/1 or /medics/1.json
  def show
  end

  # GET /medics/new
  def new
    @medic = Medic.new
  end

  # GET /medics/1/edit
  def edit
  end

  # POST /medics or /medics.json
  def create
    @medic = Medic.new(medic_params)

    respond_to do |format|
      if @medic.save
        format.html { redirect_to medic_url(@medic), notice: "Medic was successfully created." }
        format.json { render :show, status: :created, location: @medic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medics/1 or /medics/1.json
  def update
    respond_to do |format|
      if @medic.update(medic_params)
        format.html { redirect_to medic_url(@medic), notice: "Medic was successfully updated." }
        format.json { render :show, status: :ok, location: @medic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medics/1 or /medics/1.json
  def destroy
    @medic.destroy

    respond_to do |format|
      format.html { redirect_to medics_url, notice: "Medic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic
      @medic = Medic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medic_params
      params.require(:medic).permit(:nome, :crm, :sexo, :especialidade, :telefone)
    end
end
