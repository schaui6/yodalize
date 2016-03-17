class CreateUsers < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :message, null: false

      t.timestamps(null: false)
    end
  end
end
