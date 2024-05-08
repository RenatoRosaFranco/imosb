class CreateFranchiseIntents < ActiveRecord::Migration[5.2]
  def change
    create_table :franchise_intents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :investor_profile
      t.integer :investment_value

      t.timestamps
    end
  end
end
