class Employer < User

  has_many :jobs, dependent: :destroy

  def self.search(query)
    where("company_name ILIKE ? OR business ILIKE ? OR field ILIKE ? ", "%#{query}%", "%#{query}%", "%#{query}%")
  end

end
