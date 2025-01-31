Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "application", :action => "add_form"})
  get("/add", { :controller => "application", :action => "add_form"})
  get("/wizard_add", { :controller => "application", :action => "add_results"})

  get("/subtract", { :controller => "application", :action => "subtract_form"})
  get("/wizard_subtract", { :controller => "application", :action => "subtract_results"})

  get("/multiply", { :controller => "application", :action => "multiply_form"})
  get("/wizard_multiply", { :controller => "application", :action => "multiply_results"})

  get("/divide", { :controller => "application", :action => "divide_form"})
  get("/wizard_divide", { :controller => "application", :action => "divide_results"})

  get("/muggle_translate", { :controller => "application", :action => "translate_form"})
  get("/wizard_translate", { :controller => "application", :action => "translate_results"})

  get("/street_to_coords/new", { :controller => "application", :action => "street_coords_form"})
  get("/street_to_coords/results", { :controller => "application", :action => "street_coords_results"})

  get("/coords_to_weather/new", { :controller => "application", :action => "coords_weather_form"})
  get("/coords_to_weather/results", { :controller => "application", :action => "coords_weather_results"})

  get("/map", { :controller => "application", :action => "gmap"})

end
