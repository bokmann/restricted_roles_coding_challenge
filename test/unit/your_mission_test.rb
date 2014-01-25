require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  test "should be able to add Patrick Stewart to the role of 'Actor'" do
    people("patrick_stewart").roles << roles("actor")
    assert roles("actor").members.include?(people("patrick_stewart"))
  end

  test "should not be able to add Will Wheaton to the role of 'Camera Person'" do
    assert_raises( ActiveRecord::RecordInvalid ) {
      people("will_wheaton").roles << roles("camera_person")
    }
  end

  test "should be able to add Joss Whedon to the role of 'Writer'" do
    people("joss_whedon").roles << roles("writer")
    assert roles("writer").members.include?(people("joss_whedon"))
  end

  test "should not be able to add Matt Groening to the role of 'stuntperson'" do
    assert_raises( ActiveRecord::RecordInvalid ) {
      people("matt_groening").roles << roles("stuntperson")
    }
  end

  test "should be able to add Michael Matteson to the role of 'key grip'" do
    people("michael_matteson").roles << roles("key_grip")
    assert roles("key_grip").members.include?(people("michael_matteson"))
  end


  test "should not be able to add Jimmy Hoffa to the role of 'production assistant'" do
    assert_raises( ActiveRecord::RecordInvalid ) {
      people("jimmy_hoffa").roles << roles("production_assistant")
    }
  end

end