class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})

    render("show.html.erb")
  end

  def new_form

  end

  def create_row
    p = Movie.new
    p.title = params[:the_title]
    p.image_url = params[:the_image_url]
    p.description = params[:the_description]
    p.year = params[:the_year]
    p.duration = params[:the_duration]
    p.save

    redirect_to("http://localhost:3000/movies")
  end

  def destroy
    @delete_movie = Movie.find_by({ :id => params[:id]})
    @delete_movie.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def edit_form

    current_id = params[:id]

    @movie = Movie.find(current_id)

  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.title = params[:the_new_title]
    @movie.image_url = params[:the_new_image_url]
    @movie.description = params[:the_new_description]
    @movie.year = params[:the_new_year]
    @movie.duration = params[:the_new_duration]
    @movie.save

    redirect_to("http://localhost:3000/movies/#{@movie.id}")
  end
end
