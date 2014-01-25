class Person < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :name, :organization

  validates :organization, presence: true

  has_many :memberships
  has_many :roles, through: :memberships
end
