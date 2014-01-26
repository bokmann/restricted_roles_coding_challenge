class Person < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :name, :organization
  attr_accessor :role

  validates :organization, presence: true

  def available_roles
    @roles ||= organization.available_roles.map(&:name)
  end

  def role
    @role ||= Role.where(id: role_id).first
  end

  def role=(new_role)
    if available_roles.include?(new_role)
      role_id = Role.where(name: new_role).first.id
      update_attribute(:role_id, role_id)
    end
  rescue
    false
  end



end
