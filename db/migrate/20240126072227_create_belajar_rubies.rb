class CreateBelajarRubies < ActiveRecord::Migration[7.1]
  def change
    create_table :belajar_rubies do |t|
      t.string :namagame 
      t.text :komentar

      t.timestamps
    end
  end
end
