require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "orders by last name" do
  	marca = Brand.create!(name: "Lg")
    uno = Product.create!(name: "Tv smart" ,brand: marca, price: 99)
    dos = Product.create!(name: "Tv normal",brand: marca, price: 100)

    expect(Product.order(:price)).to eq([uno, dos])
  end
end
