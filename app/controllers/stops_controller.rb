class StopsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop saved."
      redirect_to line_stops
    else
      render line_path
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end
