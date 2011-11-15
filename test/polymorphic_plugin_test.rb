require 'test_helper'

class PolymorphicPluginTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, PolymorphicPlugin
  end

  context "Loading" do

    setup do
      @user = Factory :user
      @admin = Factory :admin
    end

    should "load into users" do
      assert @admin.has_things?
    end

    should "load into admins" do
      assert @user.has_things?
    end

  end

  context "User things" do
    setup do
      @user = Factory :user
    end

    should "load a list of things" do
      assert @user.things.nil? == false
    end

  end

  context "Admin things" do
    setup do
      @user = Factory :user
    end

    should "load a list of things" do
      assert @user.things.nil? == false
    end

  end

end
