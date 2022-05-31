class PlantTagsController < ApplicationController

  def new
    # To show the form I need:
    # 1. empty instance of PlantTag
    # 2. plant id
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    # to create a join table plant tag, I need:
    # 1- the plant id
    # 2 - the tag id
    # I can find them in the params
    @plant = Plant.find(params[:plant_id])
    @tag = Tag.find(params[:plant_tag][:tag_id])
    @plant_tag = PlantTag.new(plant: @plant, tag: @tag)
    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
      render :new
    end
  end
end
