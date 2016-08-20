class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name
  validates_presence_of :type, on: :create
  validates_presence_of :gender, on: :update
  validates_presence_of :description, on: :update
  validates_presence_of :business, on: :update

  def self.types
    %w(Employer Freelancer)
  end

  def self.business
    %w(Banking Insurance Engineering IT Finance Legal Marketing Sales Communication
    HR Healthcare Administration Government Construction Industry)
  end

end
