Rails.application.routes.draw do
  resources :features, :only => :index
  match "/features/view"     => 'features#view',     :as => :feature_view
  match "/features/source"   => 'features#source',   :as => :feature_source
  match "/features/treeview" => 'features#treeview', :as => :treeview
end
