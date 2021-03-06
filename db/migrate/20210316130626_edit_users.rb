# frozen_string_literal: true

class EditUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :adress, :string
    add_column :users, :city, :string
    add_column :users, :phone_number, :integer
    add_column :users, :artist, :boolean
  end
end
