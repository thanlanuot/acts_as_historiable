class CreateActsAsHistoriableHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :acts_as_historiable_histories, id: :uuid do |t|
      t.text :log
      t.references :owner, type: :uuid, polymorphic: true, index: { :name => "historiable_owner_index" }
      t.references :historiable, type: :uuid, polymorphic: true, index: { :name => "historiable_index" }
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end


  end
end
