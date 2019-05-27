class CreateClientPolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :client_policies do |t|
      t.references :client_name, foreign_key: true
      t.references :coverage_type, foreign_key: true
      t.references :insurer, foreign_key: true
      t.boolean :loss_runs_reqd
      t.date :renewal_date
      t.references :underwriter, foreign_key: true
      t.boolean :quote_recieved
      t.date :quote_recieved_date
      t.boolean :did_client_confirmed
      t.boolean :did_confirm_to_underwriter
      t.boolean :did_underwriter_confirm

      t.timestamps
    end
  end
end
