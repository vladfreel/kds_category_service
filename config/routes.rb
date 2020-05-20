KdsCategoryService::Engine.routes.draw do
  root "home#index"
  controller :home do
    get :index
    post :save_categories
    get :fetch_categories
    get :add_account_categories
  end
end
