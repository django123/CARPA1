class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_code
      t.string :amount
      t.string :public_partenership
      t.string :private_partenership
      t.string :object_project
      t.string :focal_point
      t.string :project_situation
      t.string :reference

      t.timestamps
    end
  end
end
