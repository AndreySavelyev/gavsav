class CreateNeeds < ActiveRecord::Migration
  def self.up
    create_table :needs do |t|
      t.string :title
      t.text :contents

      t.timestamps
    end
  end

  def self.down
    drop_table :needs
  end
end
