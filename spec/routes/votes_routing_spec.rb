require 'rails_helper'

RSpec.describe "Vote routes", type: :routing do
  it "routes POST votes_path(:statement_id) to the votes controller's create action" do
    expect(post(votes_path)).to route_to("votes#create")
  end

  it "routes DELETE vote_path(:id) to the votes controller's destroy action" do
    expect(delete(vote_path(id: 1))).to route_to(
      controller: "votes",
      action: "destroy",
      id: "1"
    )
  end
end
