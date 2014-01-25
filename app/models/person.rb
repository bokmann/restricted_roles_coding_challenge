class Person < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :name, :organization
  attr_accessor :role

  validates :organization, presence: true

  def available_roles
    organization.available_roles.map(&:name)
  end

  def role
    @role
  end

  def role=(new_role)
    if available_roles.include?(new_role)
      @role = Role.where(name: new_role).first
    end
  end



end
