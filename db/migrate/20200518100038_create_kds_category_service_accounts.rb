class CreateKdsCategoryServiceAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :kds_category_service_accounts do |t|

      t.timestamps
    end
  end
end
