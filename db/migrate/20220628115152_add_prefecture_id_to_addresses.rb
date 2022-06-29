class AddPrefectureIdToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :prefecture_id, :integer
    add_column :addresses, :block, :string
    add_column :addresses, :building, :string
    add_column :addresses, :phone_number, :string
    add_reference :addresses, :order, foreign_key: true
  end
end
