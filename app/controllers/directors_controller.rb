class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id]})

    render("show.html.erb")
  end

  def new_form

  end

  def create_row
    p = Director.new
    p.name = params[:the_name]
    p.image_url = params[:the_image_url]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @delete_director = Director.find_by({ :id => params[:id]})
    @delete_director.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form

    current_id = params[:id]

    @director = Director.find(current_id)

  end

  def update_row
    @director = Director.find_by({ :id => params[:id]})
    @director.name = params[:the_new_name]
    @director.image_url = params[:the_new_image_url]
    @director.bio = params[:the_new_bio]
    @director.dob = params[:the_new_dob]
    @director.save

    redirect_to("http://localhost:3000/directors/#{@director.id}")
  end
end
