class CreateCommonCores < ActiveRecord::Migration
  def change
    create_table :common_cores do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
