class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    id = params.fetch("director_id")

    @director = Director.where({ :id => id }).first
    @movies = Movie.where({ :director_id => @director.id })

    render({ :template => "/director_templates/details" })
  end
end
