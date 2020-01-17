# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.column(:author, :string)
      t.column(:content, :string)
      t.column(:rating, :integer)
      t.column(:product_id, :integer)

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.column(:name, :string)
      t.column(:cost, :money)
      t.column(:country, :string)

      t.timestamps()
    end
  end
end

class AddForeignKeyForReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :products
  end
end
