class AddDateTimeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_date, :DateTime

  end
end
