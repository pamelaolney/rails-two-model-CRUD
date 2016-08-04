class AddToProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string "name"
      t.string "image_url"
      t.string "time_to_completion"
      t.string "instructions"
      t.references :category
      t.timestamps
    end
  end
end
