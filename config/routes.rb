Rails.application.routes.draw do
  root "products#index"

  resources :products
  post 'upload' => 'products#upload_product_csv'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
