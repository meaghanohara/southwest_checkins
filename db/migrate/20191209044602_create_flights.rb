class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :description
      t.string :phone_number
      t.string :message_sent
      t.integer :user_id
      t.string :departs_at
      t.string :minute_message_sent

      t.timestamps
    end
  end
end
