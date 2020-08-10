class AddTitleToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :title, :text
    add_column :resources, :avatar, :text
  end
end
