class MlbPlayeRsController < ApplicationController
  before_action :set_mlb_player, only: [:show, :edit, :update, :destroy]

  # GET /mlb_players
  # GET /mlb_players.json
  def index
    @mlb_players = MlbPlayers.all
  end

  # GET /mlb_players/1
  # GET /mlb_players/1.json
  def show
  end

  # GET /mlb_players/new
  def new
    @mlb_player = MlbPlayers.new
  end

  # GET /mlb_players/1/edit
  def edit
  end

  # POST /mlb_players
  # POST /mlb_players.json
  def create
    @mlb_player = MlbPlayers.new(mlb_player_params)

    respond_to do |format|
      if @mlb_player.save
        format.html { redirect_to @mlb_player, notice: 'Mlb players was successfully created.' }
        format.json { render :show, status: :created, location: @mlb_player }
      else
        format.html { render :new }
        format.json { render json: @mlb_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mlb_players/1
  # PATCH/PUT /mlb_players/1.json
  def update
    respond_to do |format|
      if @mlb_player.update(mlb_player_params)
        format.html { redirect_to @mlb_player, notice: 'Mlb players was successfully updated.' }
        format.json { render :show, status: :ok, location: @mlb_player }
      else
        format.html { render :edit }
        format.json { render json: @mlb_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlb_players/1
  # DELETE /mlb_players/1.json
  def destroy
    @mlb_player.destroy
    respond_to do |format|
      format.html { redirect_to mlb_players_index_url, notice: 'Mlb players was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mlb_player
      @mlb_player = MlbPlayers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mlb_player_params
      params.require(:mlb_player).permit(:team, :name, :number, :average_or_era, :years_played, :postition)
    end
end
