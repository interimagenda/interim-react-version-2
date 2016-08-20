class Freelancer < User

  scope :availability, -> (availability) { where availability: availability }
  scope :business, -> (business) { where business: business }
  scope :field, -> (field) { where field: field }
  scope :education, -> (education) { where education: education }

  include Filterable

  def self.search(query)
    where("last_name ILIKE ? OR business ILIKE ? OR field ILIKE ? ", "%#{query}%", "%#{query}%", "%#{query}%")
  end

end
