require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.first
  end

  test "email 有効性" do
    assert @user.valid?
  end

  test "email 存在性" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email 長さ上限 255" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email フォーマット" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email 一意性" do
    duplicate_user = @user.dup
    assert_not duplicate_user.valid?
    duplicate_user.email = @user.email.upcase
    assert_not duplicate_user.valid?
  end

  test "email 登録時に小文字に変換されているか" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    user = User.new(email: mixed_case_email, password: "aaaaaa")
    user.save
    assert_equal mixed_case_email.downcase, user.reload.email
  end

end
