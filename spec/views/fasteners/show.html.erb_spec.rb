require 'rails_helper'

RSpec.describe "fasteners/show", type: :view do
  before(:each) do
    @fastener = assign(:fastener, Fastener.create!(
      :year => 2,
      :model => "Model",
      :location => "Location",
      :fastener => "Fastener",
      :specification => "Specification",
      :citation => "Citation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Fastener/)
    expect(rendered).to match(/Specification/)
    expect(rendered).to match(/Citation/)
  end
end
