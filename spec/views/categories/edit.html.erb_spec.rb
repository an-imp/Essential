require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :record_id => 1,
      :title => "MyText"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_record_id[name=?]", "category[record_id]"

      assert_select "textarea#category_title[name=?]", "category[title]"
    end
  end
end
