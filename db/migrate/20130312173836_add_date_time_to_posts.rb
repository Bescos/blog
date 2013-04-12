class AddDateTimeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_date, :DateTime

  end
end
