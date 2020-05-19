KdsCategoryService::Engine.routes.draw do
  root "home#index"
  controller :home do
    get :save_categories
    get :fetch_categories
  end
end
