class Membership < ActiveRecord::Base
  belongs_to :person
  belongs_to :role

  validate :member_eligibility

  def member_eligibility
    unless person.organization.available_roles.include?(role)
      errors.add(:person, "is not eligible for this role")
    end
  end

end
