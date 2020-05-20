require_dependency "kds_category_service/application_controller"

module KdsCategoryService
  class HomeController < ApplicationController
    def index
      redis = Redis.new(host: "localhost")
      @accounts = redis.hgetall('accounts')
      @accounts.keys.find_all{|e| e.start_with?('account_uuid')}

    end

    def add_account_categories
      redis = Redis.new(host: "localhost")
      redis.hmset('accounts',
                  'account_uuid:0', Time.now.to_i, 'name:0', 'Petya',
                  'account_uuid:1', Time.now.to_i+1, 'name:1', 'Vasya',
                  'account_uuid:2', Time.now.to_i+2, 'name:2', 'Ivan')
    end
     
    def save_categories
      KdsCategoryService::SaveCategories.new(order_params).perform 
      redirect_to action: 'index'
    end

    def fetch_categories
      @categories = KdsCategoryService::FetchCategories.new(order_params).perform 
    end

    private

    def order_params
      params.permit(:account_uuid, :categories, :days)
    end
  end
end