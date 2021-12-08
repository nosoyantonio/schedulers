class TassksController < ApplicationController
  before_action :set_tassk, only: %i[ show edit update destroy ]

  # GET /tassks or /tassks.json
  def index
    @tassks = Tassk.all
  end

  # GET /tassks/1 or /tassks/1.json
  def show
  end

  # GET /tassks/new
  def new
    @tassk = Tassk.new
  end

  # GET /tassks/1/edit
  def edit
  end

  # POST /tassks or /tassks.json
  def create
    @tassk = Tassk.new(tassk_params)

    respond_to do |format|
      if @tassk.save
        format.html { redirect_to @tassk, notice: "Tassk was successfully created." }
        format.json { render :show, status: :created, location: @tassk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tassk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tassks/1 or /tassks/1.json
  def update
    respond_to do |format|
      if @tassk.update(tassk_params)
        format.html { redirect_to @tassk, notice: "Tassk was successfully updated." }
        format.json { render :show, status: :ok, location: @tassk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tassk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tassks/1 or /tassks/1.json
  def destroy
    @tassk.destroy
    respond_to do |format|
      format.html { redirect_to tassks_url, notice: "Tassk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tassk
      @tassk = Tassk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tassk_params
      params.require(:tassk).permit(:name, :description, :code, :due_date)
    end
end
