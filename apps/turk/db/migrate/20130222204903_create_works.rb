class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :description
      t.integer :task_id
      t.integer :mechanical_turk_id
      t.string :status

      t.timestamps
    end
  end
end
