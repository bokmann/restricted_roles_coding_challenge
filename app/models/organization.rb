class Organization < ActiveRecord::Base
  attr_accessible :name
  has_many :members, class_name: "Person"
  has_many :available_roles, class_name: "Role"
end
