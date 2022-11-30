class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :full_name
      t.string :email
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
