class CreateImageAssets < ActiveRecord::Migration
  def change
    create_table :image_assets do |t|
      t.string :slug
      t.string :lg
      t.string :md
      t.string :sm
      t.string :xs

      t.timestamps
    end
  end
end
