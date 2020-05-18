module KdsCategoryService
  class FetchCategoriesForAccount
  include Interactor
      def call
        account = Account.find_by(account_uuid: context.account_uuid)
        categories = account.categories.where('created_at > ?', 30.days.ago)
        if account.categories.count > 0
        context.categories = account.categories
        else
        context.fail!
      end
    end
  end
end
