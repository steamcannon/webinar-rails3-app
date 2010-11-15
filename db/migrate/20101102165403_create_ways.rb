class CreateWays < ActiveRecord::Migration
  def self.up
    create_table :ways do |t|
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :ways
  end
end
