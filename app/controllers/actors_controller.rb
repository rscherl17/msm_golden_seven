class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})

    render("show.html.erb")
  end

  def new_form

  end

  def create_row
    p = Actor.new
    p.name = params[:the_name]
    p.image_url = params[:the_image_url]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    @delete_actor = Actor.find_by({ :id => params[:id]})
    @delete_actor.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form

    current_id = params[:id]

    @actor = Actor.find(current_id)

  end

  def update_row
    @actor = Actor.find_by({ :id => params[:id]})
    @actor.name = params[:the_new_name]
    @actor.image_url = params[:the_new_image_url]
    @actor.bio = params[:the_new_bio]
    @actor.dob = params[:the_new_dob]
    @actor.save

    redirect_to("http://localhost:3000/actors/#{@actor.id}")
  end
end
