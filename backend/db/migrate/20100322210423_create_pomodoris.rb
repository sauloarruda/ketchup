class CreatePomodoris < ActiveRecord::Migration
  def self.up
    create_table :pomodoris do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :external_interruptions, :default => 0
      t.integer :internal_interruptions, :default => 0
      t.boolean :organizational, :default => false
      t.boolean :unplanned, :default => false
      t.boolean :canceled, :default => false
      t.boolean :completed, :default => false
    end
  end

  def self.down
    drop_table :pomodoris
  end
end
