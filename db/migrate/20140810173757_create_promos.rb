class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :name
      t.string :desc
      t.string :imgsrc

      t.timestamps
    end
  end
end
