class AddAllToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    remove_column :employers, :company_name
    add_column :users, :company_location, :string
    remove_column :employers, :company_location
    add_column :users, :education, :string
    remove_column :freelancers, :education
    add_column :users, :field, :string
    remove_column :freelancers, :field
    add_column :users, :availability, :string
    remove_column :freelancers, :availability
    add_column :users, :pay_rate, :decimal
    remove_column :freelancers, :pay_rate
    add_column :users, :traits, :text
    remove_column :freelancers, :traits
    add_column :users, :skills, :text
    remove_column :freelancers, :skills
    add_column :users, :credentials, :text
    remove_column :freelancers, :credentials
    add_column :users, :certificates, :text
    remove_column :freelancers, :certificates
  end
end
