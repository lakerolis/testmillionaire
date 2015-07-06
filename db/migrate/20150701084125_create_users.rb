class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    	t.string "name", :limit => 20, :null => false
    	t.integer "score", :default => 0
      t.integer "d1", :default => 0
      t.integer "d2", :default => 0
      t.integer "d3", :default => 0
      t.integer "d4", :default => 0
      t.integer "d5", :default => 0
    	t.timestamps null: false
    end
  end

  def down
  		drop_table :users		
  end
end
