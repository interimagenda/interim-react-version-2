class AddAndRemoveFieldsToUsers < ActiveRecord::Migration
  def change
    # users
    add_column :users, :country, :string
    add_column :users, :linkedin, :string
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
    add_column :users, :github, :string
    add_column :users, :avatar, :string

    remove_column :users, :company_name
    remove_column :users, :location
    remove_column :users, :education
    remove_column :users, :field
    remove_column :users, :pay_rate

    #employers
    add_column :employers, :company_name, :string
    add_column :employers, :company_location, :string 

    #freelancers
    add_column :freelancers, :education, :text
    add_column :freelancers, :field, :string
    add_column :freelancers, :availability, :string
    add_column :freelancers, :pay_rate, :decimal
    add_column :freelancers, :traits, :text
    add_column :freelancers, :skills, :text
    add_column :freelancers, :credentials, :text
    add_column :freelancers, :certificates, :text

    #jobs
    add_column :jobs, :job_city, :string
    add_column :jobs, :job_country, :string
    add_column :jobs, :hours_a_week, :integer
    add_column :jobs, :experience_requirement, :string
    add_column :jobs, :pay_rate_minimum, :decimal
    add_column :jobs, :pay_rate_maximum, :decimal
    add_column :jobs, :responsibilities, :text
    add_column :jobs, :education_or_experience_level, :string
    add_column :jobs, :official_requirements, :string
    add_column :jobs, :certificate_requirements, :text
    add_column :jobs, :skill_requirements, :text

  end
end
