class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.string :lib_name ,{visible: false}

      t.timestamps
    end
  end
end
