require 'rails_helper'

RSpec.describe "fasteners/index", type: :view do
  before(:each) do
    assign(:fasteners, [
      Fastener.create!(
        :year => 2,
        :model => "Model",
        :location => "Location",
        :fastener => "Fastener",
        :specification => "Specification",
        :citation => "Citation"
      ),
      Fastener.create!(
        :year => 2,
        :model => "Model",
        :location => "Location",
        :fastener => "Fastener",
        :specification => "Specification",
        :citation => "Citation"
      )
    ])
  end

  it "renders a list of fasteners" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Fastener".to_s, :count => 2
    assert_select "tr>td", :text => "Specification".to_s, :count => 2
    assert_select "tr>td", :text => "Citation".to_s, :count => 2
  end
end
