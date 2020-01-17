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
