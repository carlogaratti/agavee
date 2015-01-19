class CreateHenries < ActiveRecord::Migration
  def change
    create_table :henries do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
