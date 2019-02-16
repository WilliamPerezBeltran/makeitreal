class CursesController < ApplicationController
  before_action :set_curse, only: [:show, :edit, :update, :destroy]

  # GET /curses
  # GET /curses.json
  def index
    @curses = Curse.all
  end

  # GET /curses/1
  # GET /curses/1.json
  def show
  end

  # GET /curses/new
  def new
    @curse = Curse.new
  end

  # GET /curses/1/edit
  def edit
  end

  # POST /curses
  # POST /curses.json
  def create
    @curse = Curse.new(curse_params)

    respond_to do |format|
      if @curse.save
        format.html { redirect_to @curse, notice: 'Curse was successfully created.' }
        format.json { render :show, status: :created, location: @curse }
      else
        format.html { render :new }
        format.json { render json: @curse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curses/1
  # PATCH/PUT /curses/1.json
  def update
    respond_to do |format|
      if @curse.update(curse_params)
        format.html { redirect_to @curse, notice: 'Curse was successfully updated.' }
        format.json { render :show, status: :ok, location: @curse }
      else
        format.html { render :edit }
        format.json { render json: @curse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curses/1
  # DELETE /curses/1.json
  def destroy
    @curse.destroy
    respond_to do |format|
      format.html { redirect_to curses_url, notice: 'Curse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curse
      @curse = Curse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curse_params
      params.require(:curse).permit(:title)
    end
end
