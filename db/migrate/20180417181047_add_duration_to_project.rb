class AddDurationToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :duration, :date
  end
end
