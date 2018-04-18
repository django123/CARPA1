class CreateEntryCouriers < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_couriers do |t|
      t.string :reference
      t.date :duration
      t.string :sender
      t.string :receiver
      t.string :state
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
