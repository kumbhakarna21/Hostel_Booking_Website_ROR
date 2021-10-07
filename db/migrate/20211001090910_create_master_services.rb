class CreateMasterServices < ActiveRecord::Migration[6.1]
  def change
    create_table :master_services do |t|
      t.string :service

      t.timestamps
    end
  end
end
