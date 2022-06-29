class AddPostcodeToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :postcode, :string
  end
end
