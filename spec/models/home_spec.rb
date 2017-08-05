require 'rails_helper'

RSpec.describe Home, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end

RSpec.describe "Home", :type => :request do

  it "creates a Widget and redirects to the Widget's page" do
    get "/"
    expect(response).to render_template(:index)
  end

  it "does not render a different template" do
    get "/"
    expect(response).to_not render_template(:show)
  end
end