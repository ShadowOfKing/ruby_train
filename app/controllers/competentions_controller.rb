class CompetentionsController < ApplicationController
  before_action :set_competention, only: [:show, :edit, :update, :destroy]

  # GET /competentions
  # GET /competentions.json
  def index
    @competentions = Competention.all
  end

  # GET /competentions/1
  # GET /competentions/1.json
  def show
  end

  # GET /competentions/new
  def new
    @competention = Competention.new
  end

  # GET /competentions/1/edit
  def edit
  end

  # POST /competentions
  # POST /competentions.json
  def create
    @competention = Competention.new(competention_params)

    respond_to do |format|
      if @competention.save
        format.html { redirect_to @competention, notice: 'Competention was successfully created.' }
        format.json { render :show, status: :created, location: @competention }
      else
        format.html { render :new }
        format.json { render json: @competention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competentions/1
  # PATCH/PUT /competentions/1.json
  def update
    respond_to do |format|
      if @competention.update(competention_params)
        format.html { redirect_to @competention, notice: 'Competention was successfully updated.' }
        format.json { render :show, status: :ok, location: @competention }
      else
        format.html { render :edit }
        format.json { render json: @competention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competentions/1
  # DELETE /competentions/1.json
  def destroy
    @competention.destroy
    respond_to do |format|
      format.html { redirect_to competentions_url, notice: 'Competention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competention
      @competention = Competention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competention_params
      params.require(:competention).permit(:title, :description, :isdone)
    end
end
