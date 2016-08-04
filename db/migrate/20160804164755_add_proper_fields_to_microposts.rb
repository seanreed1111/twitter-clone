class AddProperFieldsToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :title, :string
    add_column :microposts, :content, :text
    add_reference :microposts, :user, index: true, foreign_key: true
  end
end
