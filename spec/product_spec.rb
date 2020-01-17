require 'rails_helper'

describe Product do
  it("has many reviews") do
     product = Product.create(name: "product")
     review1 = Review.create(name: "review1", content: "Better than good!", rating: 5, product_id: product.id)
     review2 = Review.create(name: "review2", content: "Purchased because reasons...", rating: 5, product_id: product.id)
     expect(product.reviews()).to(eq([review1, review2]))
   endend
