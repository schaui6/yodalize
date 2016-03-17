class CreateUsers < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :message, null: false
      t.string :yodalized_message

      t.timestamps(null: false)
    end
  end
end
