require 'test_helper'

class PolymorphicPluginTest < ActiveSupport::TestCase
  test "plugin kind" do
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

    should "user things" do
      assert_equal [], @user.things
    end

    should "save built user things" do
      @user.things.build :name => 'test thing'
      assert @user.save
      @user.reload
      assert_equal ['test thing'], @user.things.collect { |t| t.name}
    end

  end

  context "User thing groupings" do
    setup do 
      @user = Factory :user
    end

    should "have empty thing grouping" do
      assert_equal [], @user.thing_groupings
    end
  end

  context "Admin things" do
    setup do
      @user = Factory :user
    end

    should "load a list of things" do
      assert @user.things.nil? == false
    end

    should "load a list of things" do
      assert @user.things.nil? == false
    end

  end

end
