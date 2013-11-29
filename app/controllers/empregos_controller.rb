class EmpregosController < ApplicationController
  before_action :set_emprego, only: [:show, :edit, :update, :destroy]

  # GET /empregos
  # GET /empregos.json
  def index
    @empregos = Emprego.all
  end

  # GET /empregos/1
  # GET /empregos/1.json
  def show
  end

  # GET /empregos/new
  def new
    @emprego = Emprego.new
  end

  # GET /empregos/1/edit
  def edit
  end

  # POST /empregos
  # POST /empregos.json
  def create
    @emprego = Emprego.new(emprego_params)

    respond_to do |format|
      if @emprego.save
        format.html { redirect_to @emprego, notice: 'Emprego was successfully created.' }
        format.json { render action: 'show', status: :created, location: @emprego }
      else
        format.html { render action: 'new' }
        format.json { render json: @emprego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empregos/1
  # PATCH/PUT /empregos/1.json
  def update
    respond_to do |format|
      if @emprego.update(emprego_params)
        format.html { redirect_to @emprego, notice: 'Emprego was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @emprego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empregos/1
  # DELETE /empregos/1.json
  def destroy
    @emprego.destroy
    respond_to do |format|
      format.html { redirect_to empregos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprego
      @emprego = Emprego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emprego_params
      params.require(:emprego).permit(:utilizador_id, :empresa_id, :cargo, :data_entrada, :data_saida)
    end
end
