require_dependency "kds_category_service/application_controller"

module KdsCategoryService
  class OrderController < ApplicationController
    def save_categories_for_account
      KdsCategoryService::SaveCategoriesForAccount.call(order_params) 
    end

    def fetch_categories_for_account
      KdsCategoryService::FetchCategoriesForAccount.call(order_params)
    end

    private

    def order_params
      params.permit(:account_uuid, :categories, :days)
    end
  end
end
