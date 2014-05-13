class UserId < ActiveRecord::Migration
  def change
  	change_table :locations do |t|
  		add_column :locations, :user_id, :integer
  	end
  end
end
