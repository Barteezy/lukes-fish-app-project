require 'rails_helper'

RSpec.describe "fish/new", :type => :view do
  before(:each) do
    assign(:fish, Fish.new(
      :species => "MyString",
      :location => "MyString",
      :bait => "MyString"
    ))
  end

  it "renders new fish form" do
    render

    assert_select "form[action=?][method=?]", fish_index_path, "post" do

      assert_select "input#fish_species[name=?]", "fish[species]"

      assert_select "input#fish_location[name=?]", "fish[location]"

      assert_select "input#fish_bait[name=?]", "fish[bait]"
    end
  end
end
