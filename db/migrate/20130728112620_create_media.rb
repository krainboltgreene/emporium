class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :image
      t.boolean :primary
      t.belongs_to :downloadable, index: true

      t.timestamps
    end
    add_index :media, :primary
  end
end
