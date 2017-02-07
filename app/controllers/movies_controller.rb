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
    p.name = params[:the_name]
    p.image_url = params[:the_image_url]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
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
    @movie.name = params[:the_new_name]
    @movie.image_url = params[:the_new_image_url]
    @movie.bio = params[:the_new_bio]
    @movie.dob = params[:the_new_dob]
    @movie.save

    redirect_to("http://localhost:3000/movies/#{@movie.id}")
  end
end
