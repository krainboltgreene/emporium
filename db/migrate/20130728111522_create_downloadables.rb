class CreateDownloadables < ActiveRecord::Migration
  def change
    create_table :downloadables do |t|
      t.string :name
      t.string :version
      t.string :compatible
      t.text :description
      t.text :changelog
      t.text :guide
      t.belongs_to :account, index: true
      t.string :link
      t.integer :download_count
      t.integer :bookmark_count
      t.string :source
      t.text :license
      t.string :type

      t.timestamps
    end
    add_index :downloadables, :name
    add_index :downloadables, :version
    add_index :downloadables, :compatible
    add_index :downloadables, :download_count
    add_index :downloadables, :bookmark_count
    add_index :downloadables, :type
  end
end
