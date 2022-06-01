class ColorsController < ApplicationController
  before_action :set_color, only: %i[show edit update destroy]
  def index
    @colors = Color.all.order(name: :asc)
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to @color, success: 'Color successfully added.'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @color.update(color_params)
      redirect_to @color, success: 'Color successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    deleted_color = @color.destroy
    redirect_to colors_url, success: "Color #{deleted_color[:name].inspect} has been successfully deleted."
  end

  private

  def color_params
    params.require(:color).permit(:name, :description, :rgb, :hex, :hsl)
  end

  def set_color
    @color = Color.find(params[:id])
  end
end
