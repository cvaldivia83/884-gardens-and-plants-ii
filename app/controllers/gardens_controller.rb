class GardensController < ApplicationController
  # We want to display the new plant form in the show view.
  # We need to instantiate the empty `Plant` to provide it to the form.
  # check show.html.erb => our form is there
  def show
    @garden = Garden.find(params[:id])
    @plant = Plant.new
  end
end
