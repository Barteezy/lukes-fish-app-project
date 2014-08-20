require 'rails_helper'

RSpec.describe "fish/index", :type => :view do
  before(:each) do
    assign(:fish, [
      Fish.create!(
        :species => "Species",
        :location => "Location",
        :bait => "Bait"
      ),
      Fish.create!(
        :species => "Species",
        :location => "Location",
        :bait => "Bait"
      )
    ])
  end

  it "renders a list of fish" do
    render
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Bait".to_s, :count => 2
  end
end
