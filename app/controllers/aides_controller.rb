class AidesController < ApplicationController
  before_action :set_aide, only: [:show, :edit, :update, :destroy]

 http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  # GET /aides
  # GET /aides.json
  def index
    @aides = Aide.all
  end

  # GET /aides/1
  # GET /aides/1.json
  def show
  end

  # GET /aides/new
  def new
    @aide = Aide.new
  end

  # GET /aides/1/edit
  def edit
  end

  # POST /aides
  # POST /aides.json
  def create
    @aide = Aide.new(aide_params)

    respond_to do |format|
      if @aide.save
        format.html { redirect_to @aide, notice: 'Aide was successfully created.' }
        format.json { render :show, status: :created, location: @aide }
      else
        format.html { render :new }
        format.json { render json: @aide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aides/1
  # PATCH/PUT /aides/1.json
  def update
    respond_to do |format|
      if @aide.update(aide_params)
        format.html { redirect_to @aide, notice: 'Aide was successfully updated.' }
        format.json { render :show, status: :ok, location: @aide }
      else
        format.html { render :edit }
        format.json { render json: @aide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aides/1
  # DELETE /aides/1.json
  def destroy
    @aide.destroy
    respond_to do |format|
      format.html { redirect_to aides_url, notice: 'Aide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aide
      @aide = Aide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aide_params
      params.require(:aide).permit(:name, :slack_name)
    end
end
