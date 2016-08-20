class Job < ActiveRecord::Base

  belongs_to :employer, dependent: :destroy

  include Filterable

  scope :business, -> (business) { where business: business }
  scope :field, -> (field) { where field: field }
  scope :pay_rate_minimum, -> (pay_rate_minimum) { where pay_rate_minimum: pay_rate_minimum }

end
