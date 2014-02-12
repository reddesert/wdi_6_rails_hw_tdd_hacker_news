class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :title
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end