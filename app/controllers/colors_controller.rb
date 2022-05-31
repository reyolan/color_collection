class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to @color, success: 'Color was successfully added.'
    else
      render :new
    end
  end

  def show
    @color = Color.find(params[:id])
  end

  private

  def color_params
    params.require(:color).permit(:name, :description, :rgb, :hex, :hsl)
  end
end
