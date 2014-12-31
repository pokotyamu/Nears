class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :exp
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
