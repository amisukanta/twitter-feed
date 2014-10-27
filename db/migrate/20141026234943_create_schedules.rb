class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :cron
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
