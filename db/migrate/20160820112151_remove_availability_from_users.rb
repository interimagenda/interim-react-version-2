class RemoveAvailabilityFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :availability
  end
end
