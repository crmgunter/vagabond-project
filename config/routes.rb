Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namepace :api do
    resources :users do
    #   resources :city do
    #     resources :post
    #   end
    # end
  end
end
