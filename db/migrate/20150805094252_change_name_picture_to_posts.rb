class ChangeNamePictureToPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :picture, :file
  end
end
