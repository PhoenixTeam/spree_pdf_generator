Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :products do
      member do
        get :show
      end
    end
  end

end
