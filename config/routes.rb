Rails.application.routes.draw do
  get("/square/new", { :controller => "calculate", :action => "new_square" })
  get("/square/results", { :controller => "calculate", :action => "square_results" })

  get("/square_root/new", { :controller => "calculate", :action => "new_square_root" })
  get("/square_root/results", { :controller => "calculate", :action => "square_root_results" })

  get("/payment/new", { :controller => "calculate", :action => "payment_new" })
  get("/payment/results", { :controller => "calculate", :action => "payment_results" })

  get("/random/new", { :controller => "calculate", :action => "random_new" })
  get("/random/results", { :controller => "calculate", :action => "random_results" })

  get("/", { :controller => "calculate", :action => "home" })
end
