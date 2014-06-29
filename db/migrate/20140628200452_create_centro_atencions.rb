class CreateCentroAtencions < ActiveRecord::Migration
  def change
    create_table :centro_atencions do |t|
      t.string :categoria
      t.string :servicio

      t.timestamps
    end
  end
end
