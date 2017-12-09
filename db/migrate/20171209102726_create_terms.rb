class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :title
      t.float :rate

      t.timestamps null: false
    end
  end
end
