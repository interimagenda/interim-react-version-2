class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.types
    %w(Employer Freelancer)
  end

  def self.business
    %w(Banking Insurance Engineering IT Finance Legal Marketing Sales Communication
    HR Healthcare Administration Government Construction Industry)
  end

end
