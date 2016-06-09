class AddAttributionToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :attribution, :string
  end
end
