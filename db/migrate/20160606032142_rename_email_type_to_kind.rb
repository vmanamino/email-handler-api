class RenameEmailTypeToKind < ActiveRecord::Migration
  def change
    rename_column :emails, :type, :kind
  end
end
