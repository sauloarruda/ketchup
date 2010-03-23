class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :name, :nullable => false
      t.integer :estimate, :nullable => false
      t.boolean :completed, :default => false
      t.boolean :organizational, :default => false
      t.boolean :unplanned, :default => false
      t.references :project
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
