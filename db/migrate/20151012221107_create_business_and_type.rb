class CreateBusinessAndType < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.column :address, :string
      t.column :phone_number, :integer
      t.column :website, :string
      t.column :hours_of_operation, :string
      t.column :type_id, :integer
      t.timestamps
    end
    create_table :types do |t|
      t.column :type, :string
      t.timestamps
    end
  end
end
