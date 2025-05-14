class AddExternalIdToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :external_id, :string
  end
end
