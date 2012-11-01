class AddTabsToCategories < ActiveRecord::Migration
  def self.up
  	Category.create(name: 'News')
  	Category.create(name: 'Programming')
  	Category.create(name: 'Sports')
	Category.create(name: 'Music')
	Category.create(name: 'Cooking')
  	Category.create(name: 'Politics')
  end
  def self.down
  	Category.delete_all
  end
end
