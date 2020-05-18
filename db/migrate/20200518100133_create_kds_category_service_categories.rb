class CreateKdsCategoryServiceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :kds_category_service_categories do |t|

      t.timestamps
    end
  end
end
