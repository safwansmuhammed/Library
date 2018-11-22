class CreateLibreries < ActiveRecord::Migration[5.2]
  def change
    create_table :libreries do |t|
      t.string :position

      t.timestamps
    end
  end
end
