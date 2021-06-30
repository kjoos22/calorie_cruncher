Rails.application.routes.draw do
  #resources :exercises
  #resources :days
  resources :people do
    resources :days do 
      resources :exercises
    end
  end
  
end
