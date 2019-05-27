class CreateAbyences < ActiveRecord::Migration[5.2]
  def change
    create_table :abyences do |t|
      t.references :Client, foreign_key: true
      t.references :insurer, foreign_key: true
      t.date :reminder_date
      t.text :reminder_content
      t.date :renewal_date
      t.references :underwriter, foreign_key: true

      t.timestamps
    end
  end
end
