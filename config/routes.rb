Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

end
