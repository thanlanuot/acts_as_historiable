class CreateActsAsHistoriableHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :acts_as_historiable_histories, id: :uuid do |t|
      t.text :log
      t.polymorphic :owner, type: :uuid
      t.polymorphic :historiable, type: :uuid
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
