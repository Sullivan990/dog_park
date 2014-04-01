DogPark::Application.routes.draw do

  resources :owners, only: [:index, :show, :new, :create]

end
