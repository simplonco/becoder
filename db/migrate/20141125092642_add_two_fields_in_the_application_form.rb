class AddTwoFieldsInTheApplicationForm < ActiveRecord::Migration
  def change
  	add_column :applications, :name, :string
  	add_column :applications, :email, :string
  end
end
