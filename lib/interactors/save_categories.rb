module KdsCategoryService
  class SaveCategories
    include Interactor
    def call
      #redis = Redis.new(host: "localhost")
      #account = redis.get(context.account_uuid)
      context.categories each do |category|
        redis.set("category", category)
        account.categories.new(name: category)
        context.fail! unless account.save
      end
      context.categories = account.categories
    end
  end
end
