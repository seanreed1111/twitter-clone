class AddFieldsToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :title, :string
    add_column :microposts, :content, :textarea
    add_reference :microposts, :user, index: true, foreign_key: true
  end
end
