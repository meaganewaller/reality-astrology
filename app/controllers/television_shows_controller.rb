class TelevisionShowsController < ApplicationController
  before_action :set_television_show, only: %i[show edit update destroy]

  def index
    @television_shows = TelevisionShow.all
  end

  def show
  end

  def new
    @television_show = TelevisionShow.new
  end

  def edit
  end

  def create
    @television_show = TelevisionShow.new(television_show_params)

    if @television_show.save
      redirect_to @television_show, notice: "Television show was successfully created."
    else
      render :new
    end
  end

  def update
    if @television_show.update(television_show_params)
      redirect_to @television_show, notice: "Television show was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @television_show.destroy
    redirect_to television_shows_url, notice: "Television show was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_television_show
    @television_show = TelevisionShow.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def television_show_params
    params.require(:television_show).permit(:name)
  end
end
