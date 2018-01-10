class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
