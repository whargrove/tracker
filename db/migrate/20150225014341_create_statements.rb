class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :activity, index: true

      t.timestamps null: false
    end
  end
end
