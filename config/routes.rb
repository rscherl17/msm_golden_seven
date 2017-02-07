Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    get("/", { :controller => "directors", :action => "index" })
  # DIRECTOR Routes

    # Routes to CREATE photos
    get("/directors/new",               { :controller => "directors", :action => "new_form" })
    get("/create_director",             { :controller => "directors", :action => "create_row" })

    # Routes to READ photos
    get("/directors",                   { :controller => "directors", :action => "index" })
    get("/directors/:id",               { :controller => "directors", :action => "show" })

    # Routes to UPDATE photos
    get("/directors/:id/edit",          { :controller => "directors", :action => "edit_form"})
    get("/update_director/:id",         { :controller => "directors", :action => "update_row"})

    # Routes to DELETE photos
    get("/delete_director/:id",         { :controller => "directors", :action => "destroy"})

  # ACTOR Routes

    # Routes to CREATE photos
    get("/actors/new",               { :controller => "actors", :action => "new_form" })
    get("/create_actor",             { :controller => "actors", :action => "create_row" })

    # Routes to READ photos
    get("/actors",                   { :controller => "actors", :action => "index" })
    get("/actors/:id",               { :controller => "actors", :action => "show" })

    # Routes to UPDATE photos
    get("/actors/:id/edit",          { :controller => "actors", :action => "edit_form"})
    get("/update_actor/:id",         { :controller => "actors", :action => "update_row"})

    # Routes to DELETE photos
    get("/delete_actor/:id",         { :controller => "actors", :action => "destroy"})

  # Movie Routes

    # Routes to CREATE photos
    get("/movies/new",               { :controller => "movies", :action => "new_form" })
    get("/create_movie",             { :controller => "movies", :action => "create_row" })

    # Routes to READ photos
    get("/movies",                   { :controller => "movies", :action => "index" })
    get("/movies/:id",               { :controller => "movies", :action => "show" })

    # Routes to UPDATE photos
    get("/movies/:id/edit",          { :controller => "movies", :action => "edit_form"})
    get("/update_movie/:id",         { :controller => "movies", :action => "update_row"})

    # Routes to DELETE photos
    get("/delete_movie/:id",         { :controller => "movies", :action => "destroy"})
  end
