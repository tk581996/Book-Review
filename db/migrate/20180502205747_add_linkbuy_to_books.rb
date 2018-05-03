class AddLinkbuyToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :linkbuy, :string
  end
end
