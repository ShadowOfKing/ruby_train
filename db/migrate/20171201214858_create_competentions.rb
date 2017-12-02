class CreateCompetentions < ActiveRecord::Migration
  def change
    create_table :competentions do |t|
      t.string :title
      t.text :description
      t.boolean :isdone

      t.timestamps null: false
    end
  end
end
