class Person < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :name, :organization

  validates :organization, presence: true
end
