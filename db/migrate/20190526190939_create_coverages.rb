class CreateCoverages < ActiveRecord::Migration[5.2]
  def change
    create_table :coverages do |t|
      t.string :coverage_type

      t.timestamps
    end
  end
end
