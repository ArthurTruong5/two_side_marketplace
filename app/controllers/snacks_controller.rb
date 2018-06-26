class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :edit, :update, :destroy]

  # GET /snacks
  # GET /snacks.json
  def index
    @snacks = Snack.all
  end

  # GET /snacks/1
  # GET /snacks/1.json
  def show
  end

  # GET /snacks/new
  def new
    @snack = Snack.new
  end

  # GET /snacks/1/edit
  def edit
  end

  # POST /snacks
  # POST /snacks.json
  def create
    @snack = Snack.new(snack_params)

    respond_to do |format|
      if @snack.save
        format.html { redirect_to @snack, notice: 'Snack was successfully created.' }
        format.json { render :show, status: :created, location: @snack }
      else
        format.html { render :new }
        format.json { render json: @snack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snacks/1
  # PATCH/PUT /snacks/1.json
  def update
    respond_to do |format|
      if @snack.update(snack_params)
        format.html { redirect_to @snack, notice: 'Snack was successfully updated.' }
        format.json { render :show, status: :ok, location: @snack }
      else
        format.html { render :edit }
        format.json { render json: @snack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snacks/1
  # DELETE /snacks/1.json
  def destroy
    @snack.destroy
    respond_to do |format|
      format.html { redirect_to snacks_url, notice: 'Snack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack
      @snack = Snack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snack_params
      params.require(:snack).permit(:title, :brand, :type, :description, :price)
    end
end
