class GamesController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'csv'

  def index
    if params[:search]
      @games = Game.search(params[:search])
    else
    @games = Game.all
    end
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def searching
    @games = Game.search(params[:search])
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def xbox_one
    @games = Game.where(console_id: 1)
  end

  def wiiu
    @games = Game.where(console_id: 2)
  end

  def wii
    @games = Game.where(console_id: 3)
  end

  def xbox_360
    @games = Game.where(console_id: 4)
  end

  def xbox
    @games = Game.where(console_id: 5)
  end
  def gcn
    @games = Game.where(console_id: 6)
  end

  def ps2
    @games = Game.where(console_id: 7)
  end

  def n64
    @games = Game.where(console_id: 8)
  end

  def ps1
    @games = Game.where(console_id: 9)
  end

  def saturn
    @games = Game.where(console_id: 10)
  end

  def snes
    @games = Game.where(console_id: 11)
  end

  def genesis
    @games = Game.where(console_id: 12)
  end

  def nes
    @games = Game.where(console_id: 13)
  end

  def pc
    @games = Game.where(console_id: 14)
  end


  def search
    @games = Game.search(params[:search])
  end

  def import
    Game.import(params[:file])
    redirect_to root_url, notice: "Games imported."
  end

  private
  def game_params
    params.require(:game).permit!
  end

end