class PrototypesController < ApplicationController
  def index
  end

  def new
    # binding.pry
    @prototype = Prototype.new
    @prototype.capture_images.build

  end

  def create
    Prototype.create(proto_params)
    redirect_to actuion: :index
  end

  def show
  end

  private

    def proto_params
      binding.pry
      params.require(:prototype).permit(:title, :catch_copy, :concept, capture_images_attributes: [:type,:content])
    end
end
