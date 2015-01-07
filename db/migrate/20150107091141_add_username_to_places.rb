class AddUsernameToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :username, :string
  end
end
