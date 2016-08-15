Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :supports
  get "/shows" => 'supports#shows', as: :shows
  root "supports#index"

end
