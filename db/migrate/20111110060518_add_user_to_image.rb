class AddUserToImage < ActiveRecord::Migration
  def self.up
    add_column :images,:user,:string ,:default => "Sebastian Lee"
    add_column :images,:no_of_stars,:integer,:default => 1
  end

  def self.down
    remove_column :images,:user
  end
end
