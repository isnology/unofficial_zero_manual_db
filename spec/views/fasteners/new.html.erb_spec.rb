require 'rails_helper'

RSpec.describe "fasteners/new", type: :view do
  before(:each) do
    assign(:fastener, Fastener.new(
      :year => 1,
      :model => "MyString",
      :location => "MyString",
      :fastener => "MyString",
      :specification => "MyString",
      :citation => "MyString"
    ))
  end

  it "renders new fastener form" do
    render

    assert_select "form[action=?][method=?]", fasteners_path, "post" do

      assert_select "input#fastener_year[name=?]", "fastener[year]"

      assert_select "input#fastener_model[name=?]", "fastener[model]"

      assert_select "input#fastener_location[name=?]", "fastener[location]"

      assert_select "input#fastener_fastener[name=?]", "fastener[fastener]"

      assert_select "input#fastener_specification[name=?]", "fastener[specification]"

      assert_select "input#fastener_citation[name=?]", "fastener[citation]"
    end
  end
end
