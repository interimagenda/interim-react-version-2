class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  validates_presence_of :first_name, :last_name
  validates_presence_of :type, on: :create
  validates_presence_of :gender, on: :update
  validates_presence_of :description, on: :update
  validates_presence_of :business, on: :update

  def mailboxer_email(object)
    email
  end

  def self.types
    %w(Employer Freelancer)
  end

  def self.business
    %w(Banking Insurance Engineering IT Finance Legal Marketing Sales Communication
    HR Healthcare Administration Government Construction Industry)
  end
  
end
