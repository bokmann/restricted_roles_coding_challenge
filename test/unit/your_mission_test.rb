require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  test "should be able to add Patrick Stewart to the role of 'Actor'" do
    patrick = people(:patrick_stewart)
    actor_role = roles(:actor)
    patrick.role = 'Actor'
    assert_equal actor_role, patrick.role
  end

  test "should not be able to add Will Wheaton to the role of 'Camera Person'" do
    will = people(:will_wheaton)
    will.role = 'Camera Person'
    assert_nil will.role
  end

  test "should be able to add Joss Whedon to the role of 'Writer'" do
    joss = people(:joss_whedon)
    writer_role = roles(:writer)
    joss.role = 'Writer'
    assert_equal writer_role, joss.role
  end

  test "should not be able to add Matt Groening to the role of 'stuntperson'" do
    matt = people(:matt_groening)
    matt.role = 'Stuntperson'
    assert_nil matt.role
  end

  test "should be able to add Michael Matteson to the role of 'key grip'" do
    michael = people(:michael_matteson)
    key_grip_role = roles(:key_grip)
    michael.role = 'Key Grip'
    assert_equal key_grip_role, michael.role
  end

  test "should not be able to add Jimmy Hoffa to the role of 'production assistant'"  do
    jimmy = people(:jimmy_hoffa)
    jimmy.role = 'Procution Assistant'
    assert_nil jimmy.role
  end

end
