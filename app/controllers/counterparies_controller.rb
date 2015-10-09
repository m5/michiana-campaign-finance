class CounterpariesController < ApplicationController
  before_action :set_counterpary, only: [:show, :edit, :update, :destroy]

  # GET /counterparies
  # GET /counterparies.json
  def index
    @counterparies = Counterpary.all
  end

  # GET /counterparies/1
  # GET /counterparies/1.json
  def show
  end

  # GET /counterparies/new
  def new
    @counterpary = Counterpary.new
  end

  # GET /counterparies/1/edit
  def edit
  end

  # POST /counterparies
  # POST /counterparies.json
  def create
    @counterpary = Counterpary.new(counterpary_params)

    respond_to do |format|
      if @counterpary.save
        format.html { redirect_to @counterpary, notice: 'Counterpary was successfully created.' }
        format.json { render :show, status: :created, location: @counterpary }
      else
        format.html { render :new }
        format.json { render json: @counterpary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counterparies/1
  # PATCH/PUT /counterparies/1.json
  def update
    respond_to do |format|
      if @counterpary.update(counterpary_params)
        format.html { redirect_to @counterpary, notice: 'Counterpary was successfully updated.' }
        format.json { render :show, status: :ok, location: @counterpary }
      else
        format.html { render :edit }
        format.json { render json: @counterpary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counterparies/1
  # DELETE /counterparies/1.json
  def destroy
    @counterpary.destroy
    respond_to do |format|
      format.html { redirect_to counterparies_url, notice: 'Counterpary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counterpary
      @counterpary = Counterpary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counterpary_params
      params.require(:counterpary).permit(:name, :address, :city, :state, :zip, :occupation, :office)
    end
end
