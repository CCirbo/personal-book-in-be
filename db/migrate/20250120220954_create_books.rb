class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :author, null: false
      t.string :isbn, null: false
      t.string :cover_url
      t.text :description
      t.string :category
      t.string :section, default: 'library'
      t.string :loaned_to
      t.date :loan_due_date
      t.decimal :price
      t.text :notes

      t.timestamps
    end
  end
end
