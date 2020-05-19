require_dependency "kds_category_service/application_controller"

module KdsCategoryService
  class HomeController < ApplicationController
    def index
      
    end
    
    def save_categories
      KdsCategoryService::SaveCategories.call(order_params) 
    end

    def fetch_categories
      KdsCategoryService::FetchCategories.call(order_params)
    end

    private

    def order_params
      params.permit(:account_uuid, :categories, :days)
    end
  end
end