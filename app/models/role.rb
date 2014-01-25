class Role < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :name

  has_many :memberships
  has_many :members, through: :memberships, source: :person
end
