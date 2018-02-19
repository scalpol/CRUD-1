class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :string, :price
  end
end
