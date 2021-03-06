require 'rails_helper'

RSpec.describe "statements/show.html.haml", type: :view, statements_helper: true do
  let(:statement) { FactoryGirl.build_stubbed(:statement, score: 0.351) }
  let(:pro_arguments) { [] }
  let(:contra_arguments) { [] }

  before do
    assign(:statement, statement)
    assign(:pro_arguments, pro_arguments)
    assign(:contra_arguments, contra_arguments)
    render template: "statements/show", locals: { forelast_visited_path: "/" }
  end

  it "displays the statement's body" do
    expect(rendered).to have_content(body(statement))
  end

  it "displays headline for pro arguments" do
    expect(rendered).to have_content(I18n.t("statements.show.headlines.pro_arguments"))
  end

  it "displays headline for contra arguments" do
    expect(rendered).to have_content(I18n.t("statements.show.headlines.contra_arguments"))
  end
end
