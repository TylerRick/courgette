ActionController::Routing::Routes.draw do |map|
  map.resources :features, :only => %w(index show)

  map.javascripts "/javascripts/:id.js", :controller => 'assets', :action => 'javascripts'
  map.stylesheets "/stylesheets/:id.css", :controller => 'assets', :action => 'stylesheets'
end