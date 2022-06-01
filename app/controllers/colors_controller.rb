class ColorsController < ApplicationController
  before_action :set_color, only: %i[show edit update destroy]
  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      flash[:success] = 'Color was successfully added.'
      redirect_to @color
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @color.update(color_params)
      flash[:success] = 'Color successfully updated.'
      redirect_to @color
    else
      render :edit
    end
  end

  def destroy
    deleted_color = @color.destroy
    flash[:success] = "Color #{deleted_color[:name]} has been successfully deleted."
    redirect_to colors_url
  end

  private

  def color_params
    params.require(:color).permit(:name, :description, :rgb, :hex, :hsl)
  end

  def set_color
    @color = Color.find(params[:id])
  end
end
