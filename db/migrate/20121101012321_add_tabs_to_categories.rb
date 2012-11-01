class AddTabsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :index, :news
    add_column :categories, :index, :programming
    add_column :categories, :index, :sports
    add_column :categories, :index, :music
    add_column :categories, :index, :cooking
    add_column :categories, :index, :politics
  end
end
