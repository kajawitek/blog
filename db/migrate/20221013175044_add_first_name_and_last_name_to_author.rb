# frozen_string_literal: true

class AddFirstNameAndLastNameToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string, null: false
    add_column :authors, :last_name, :string, null: false
  end
end
