class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = "line: #{@line.name} created."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(params[:line])
      flash[:notice] = "line updated."
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "line deleted."
    redirect_to root_path
  end
end
