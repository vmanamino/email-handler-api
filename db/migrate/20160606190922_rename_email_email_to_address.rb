class RenameEmailEmailToAddress < ActiveRecord::Migration
  def change
    rename_column :emails, :email, :address
  end
end
