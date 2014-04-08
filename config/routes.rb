BusTimetable::Application.routes.draw do
  root to: 'stations#index'
  resources :stations, :stops
  resources :lines do
    resources :stops
  end
end
