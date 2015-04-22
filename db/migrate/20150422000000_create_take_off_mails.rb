class CreateTakeOffMails < ActiveRecord::Migration
  def change
    create_table :take_off_mails do |t|
      t.string :from, null: false
      t.string :bcc
      t.string :subject, null: false
      t.string :template, null: false

      t.timestamps null: false
    end
  end
end
