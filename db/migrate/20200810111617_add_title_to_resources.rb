class AddTitleToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :title, :string
    add_column :resources, :avatar, :string
  end
end
