class AddPartToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :part, :string
  end
end
