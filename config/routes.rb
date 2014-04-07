BusTimetable::Application.routes.draw do
  root to: 'stations#index'
  resources :stations, :lines do
    resources :stops
  end
end
