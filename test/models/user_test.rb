require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Should raise validation exception if no fname" do
    user = User.new(
      {
        email: "test@test.com",
        encrypted_password: "test",
        lname: "lname",
        admin: false,
      }
    )
    assert_raises(ActiveRecord::RecordInvalid) do
      user.save!
    end
  end

  test "Should raise validation exception if no lname" do
    user = User.new(
      {
        email: "test@test.com",
        encrypted_password: "test",
        fname: "fname",
        admin: false,
      }
    )
    assert_raises(ActiveRecord::RecordInvalid) do
      user.save!
    end
  end
end
