class CreateMechanicalTurks < ActiveRecord::Migration
  def change
    create_table :mechanical_turks do |t|
      t.string :name

      t.timestamps
    end
  end
end
