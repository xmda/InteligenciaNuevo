class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :cate

      t.timestamps
    end
  end
end
