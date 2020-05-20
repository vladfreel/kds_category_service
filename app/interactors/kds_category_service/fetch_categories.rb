require 'redis'
module KdsCategoryService
  class FetchCategories

    def initialize(account_uuid:)
      @account_uuid = account_uuid
    end

    def perform
      redis = Redis.new(host: "localhost")
      redis.hget("categories:#{account_uuid}")
    end
  end
end
