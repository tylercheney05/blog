class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :titl
      t.string :autho
      t.text :body

      t.timestamps
    end
  end
end
