require 'spec_helper'

describe CharactersController do
  render_views

  before(:each) do
    @attr = {
      :name =>              "Galactus",
      :real_name =>         "Galan",
      :gender =>            "m",
      :alignment =>         "evil",
      :energy_projection => 7,
      :strength =>          6,
      :durability =>        5,
      :fighting_skill =>    4,
      :intelligence =>      3,
      :speed =>             2
    }
  end

  it "should create a new character with valid attributes" do
    Character.create!(@attr) # throws an exception which will fail the test, if create doesn't succeed
  end

  it "should require a name" do
    no_name_character = Character.new(@attr.merge(:name => ""))
    no_name_character.should_not be_valid
  end
  
  it "should require energy projection between 1 and 7" do
    low = Character.new(@attr.merge(:energy_projection => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:energy_projection => 8))
    high.should_not be_valid
  end

  it "should require strength between 1 and 7" do
    low = Character.new(@attr.merge(:strength => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:strength => 8))
    high.should_not be_valid
  end

  it "should require durability between 1 and 7" do
    low = Character.new(@attr.merge(:durability => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:durability => 8))
    high.should_not be_valid
  end

  it "should require fighting skill between 1 and 7" do
    low = Character.new(@attr.merge(:fighting_skill => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:fighting_skill => 8))
    high.should_not be_valid
  end

  it "should require intelligence between 1 and 7" do
    low = Character.new(@attr.merge(:intelligence => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:intelligence => 8))
    high.should_not be_valid
  end

  it "should require speed between 1 and 7" do
    low = Character.new(@attr.merge(:speed => 0))
    low.should_not be_valid
    high = Character.new(@attr.merge(:speed => 8))
    high.should_not be_valid
  end
end
