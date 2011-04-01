unless Rails.env.production?

  ActionController::Routing::Routes.draw do |map|
    map.resources :features, :only => 'index'
    # TODO is there a way to DRY this ?
    map.feature_view "/features/view", :controller => 'features', :action => 'view'
    map.feature_source "/features/source", :controller => 'features', :action => 'source'
    map.treeview "/features/treeview", :controller => 'features', :action => 'treeview'
    map.feature_screenshots "/features/screenshots", :controller => 'features', :action => 'screenshots'
  end

end