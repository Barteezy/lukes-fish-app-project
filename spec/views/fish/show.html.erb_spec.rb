require 'rails_helper'

RSpec.describe "fish/show", :type => :view do
  before(:each) do
    @fish = assign(:fish, Fish.create!(
      :species => "Species",
      :location => "Location",
      :bait => "Bait"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Bait/)
  end
end
