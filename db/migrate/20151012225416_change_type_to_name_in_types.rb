class ChangeTypeToNameInTypes < ActiveRecord::Migration
  def change
    rename_column :types, :type, :name
  end
end
