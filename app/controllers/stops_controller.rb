class StopsController < ApplicationController

  def index
    @stops = Stop.all
    binding.pry
    render()
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop saved."
    else
      flash[:notice] = "Stop not saved."
    end
    redirect_to line_path(@stop.line_id)
  end

  def show
    @stop = Stop.new
  end
