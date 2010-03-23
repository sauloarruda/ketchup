class CreatePomodoris < ActiveRecord::Migration
  def self.up
    create_table :pomodoris do |t|
      t.datetime :start_date, :nullable => true
      t.datetime :end_date
      t.integer :external_interruptions, :default => 0, :nullable => false
      t.integer :internal_interruptions, :default => 0, :nullable => false
      t.boolean :canceled, :default => false, :nullable => false
      t.references :activity
    end
  end

  def self.down
    drop_table :pomodoris
  end
end
