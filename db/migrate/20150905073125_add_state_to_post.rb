class AddStateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :state, :string, :default => "hide"
  end
end
