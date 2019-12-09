Rails.application.routes.draw do
  # Routes for the Flight resource:

  # CREATE
  get("/flights/new", { :controller => "flights", :action => "new_form" })
  post("/create_flight", { :controller => "flights", :action => "create_row" })

  # READ
  get("/flights", { :controller => "flights", :action => "index" })
  get("/flights/:id_to_display", { :controller => "flights", :action => "show" })

  # UPDATE
  get("/flights/:prefill_with_id/edit", { :controller => "flights", :action => "edit_form" })
  post("/update_flight/:id_to_modify", { :controller => "flights", :action => "update_row" })

  # DELETE
  get("/delete_flight/:id_to_remove", { :controller => "flights", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
