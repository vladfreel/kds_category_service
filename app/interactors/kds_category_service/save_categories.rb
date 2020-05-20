require 'redis'
module KdsCategoryService
  class SaveCategories

    def initialize(account_uuid:)
      @account_uuid = account_uuid
      @categories = categories
    end

    def perform
      redis = Redis.new(host: "localhost")
      categories.each do |category|
        redis.hset("categories:#{account_uuid}", name, category)
      end
    end
  end
end
