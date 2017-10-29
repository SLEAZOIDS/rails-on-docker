class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.integer :gender

      t.timestamps
    end
  end
end
