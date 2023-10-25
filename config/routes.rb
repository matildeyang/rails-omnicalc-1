Rails.application.routes.draw do
  get("/square/new", { :controller => "calculate", :action => "new_square" })
  get("/square_root/new", { :controller => "calculate", :action => "new_square_root" })
end
