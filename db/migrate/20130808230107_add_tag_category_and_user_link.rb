class AddTagCategoryAndUserLink < ActiveRecord::Migration
    def up
        create_table :categories do |t|
            t.string :name
            t.timestamps
        end

        create_table :tags do |t|
            t.string :name
            t.timestamps
        end

        add_column :posts, :user_id, :integer
        add_column :posts, :category_id, :integer

        add_index :posts, :user_id
        add_index :posts, :category_id

        create_table :posts_tags do |t|
            t.integer :post_id
            t.integer :tag_id
            t.timestamps
        end
        add_index :posts_tags, :post_id
        add_index :posts_tags, :tag_id
    end

    def down
        drop_table :categories
        drop_table :tags
        drop_table :posts_tags
        remove_column :posts, :user_id
        remove_column :posts, :tag_id
    end
end
