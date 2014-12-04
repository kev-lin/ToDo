class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|

      t.timestamps
    end
  end
end
