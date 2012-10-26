class CreateOtterlogs < ActiveRecord::Migration
  def up
    create_table :otterlogs, id: false do |t|
      t.string :name, null: false
      t.string :state #, null: false
      t.string :place# , null: false
      t.string :wetness#, null: false
      t.boolean :is_eating#, null: false
      t.timestamp :documented_at#, null: false
    end

    add_column :otterlogs, :id, :uuid, null: false                                                                                                                
    execute "ALTER TABLE otterlogs ADD PRIMARY KEY (id)"
  end

  def down
    drop_table :otterlogs
  end
  
end
