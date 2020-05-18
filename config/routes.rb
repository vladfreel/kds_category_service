KdsCategoryService::Engine.routes.draw do
  resources :orders do
    get 'save_categories_for_account'
    get 'fetch_categories_for_account'
  end
end
