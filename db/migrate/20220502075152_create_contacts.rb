class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :name_journalist
      t.text :phone_journalist
      t.text :email_journalist
      t.text :message_journalist

      t.timestamps
    end
  end
end
