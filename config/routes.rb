Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'tops#index'
resources :tops do 
  resources :artists
end
resources :artists do 
  resources :songs
end

end
