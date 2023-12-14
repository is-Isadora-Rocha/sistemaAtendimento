class CreateSenhas < ActiveRecord::Migration[7.1]
  def change
    create_table :senhas do |t|
      t.string :numero

      t.timestamps
    end
  end
end
