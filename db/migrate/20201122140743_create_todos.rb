class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :content
      t.string :name
      t.date :duedate
      t.decimal :status
      t.text :remark
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
