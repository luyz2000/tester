require 'rails_helper'

RSpec.describe Brand, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "orders by last name" do
		uno = Brand.create!(name: "Lg")
		dos = Brand.create!(name: "Samsung")

		expect(Brand.order(:name)).to eq([uno, dos])
  end

	it "is invalid without an brand" do
		uno = Brand.create(name: "")
		expect(uno.errors[:name]).to include("can't be blank")
	end

end
