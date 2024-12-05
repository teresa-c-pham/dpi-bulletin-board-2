Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  get("/", { :controller => "boards", :action => "index" })

  # Routes for the Post resource:
  root "boards#index"

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the Board resource:

  # CREATE
  post("/insert_board", { :controller => "boards", :action => "create" })
          
  # READ
  get("/boards", { :controller => "boards", :action => "index" })
  
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
  
  # UPDATE
  
  post("/modify_board/:path_id", { :controller => "boards", :action => "update" })
  
  # DELETE
  get("/delete_board/:path_id", { :controller => "boards", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # READ
  get("/users/sign_up", { :controller => "users", :action => "sign_up" })
  
  get("/users/sign_in", { :controller => "users", :action => "sign_in" })

  get("/users/sign_out", { :controller => "users", :action => "sign_out" })
  
  get("/users/edit", { :controller => "users", :action => "edit" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
