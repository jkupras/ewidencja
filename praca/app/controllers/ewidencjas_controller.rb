class EwidencjasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ewidencja, only: [:show, :edit, :update, :destroy]

  # GET /ewidencjas
  # GET /ewidencjas.json



  def index

@ewidencjas = Ewidencja.where(user_id: current_user.id)

    @lata=Array.new
    @ewidencjas.each do |x|
    @lata<<x.data.year


end








  end

  # GET /ewidencjas/1
  # GET /ewidencjas/1.json
  def show
  end

  # GET /ewidencjas/new
  def new
    @ewidencja = current_user.ewidencjas.build
  end

  # GET /ewidencjas/1/edit
  def edit
  end

  # POST /ewidencjas
  # POST /ewidencjas.json
  def create
    @ewidencja = current_user.ewidencjas.build(ewidencja_params)

    respond_to do |format|
      if @ewidencja.save
        format.html { redirect_to @ewidencja, notice: 'Dodano nowy wpis do Ewidencji.' }
        format.json { render :show, status: :created, location: @ewidencja }
      else
        format.html { render :new }
        format.json { render json: @ewidencja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ewidencjas/1
  # PATCH/PUT /ewidencjas/1.json
  def update
    respond_to do |format|
      if @ewidencja.update(ewidencja_params)
        format.html { redirect_to @ewidencja, notice: 'Ewidencja została zaktualizowana.' }
        format.json { render :show, status: :ok, location: @ewidencja }
      else
        format.html { render :edit }
        format.json { render json: @ewidencja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ewidencjas/1
  # DELETE /ewidencjas/1.json
  def destroy
    @ewidencja.destroy
    respond_to do |format|
      format.html { redirect_to ewidencjas_url, notice: 'Usunięto wpis z Ewidencji.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ewidencja
      @ewidencja = Ewidencja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ewidencja_params
      params.require(:ewidencja).permit(:data, :nr, :przychod, :wydatki, :uwagi)
    end
end
