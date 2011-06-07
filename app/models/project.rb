class Project < ActiveRecord::Base
  has_many :stories
  # Validations
  validates :name, presence: true, length: {maximum: 50}
end
