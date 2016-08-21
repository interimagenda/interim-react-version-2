class AddForeignKeyToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :freelancer, index: true, foreign_key: true
  end
end
