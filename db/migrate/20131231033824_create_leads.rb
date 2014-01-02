class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
