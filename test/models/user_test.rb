require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "First", last_name: "Last",
    email: "user@example.com", password: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
