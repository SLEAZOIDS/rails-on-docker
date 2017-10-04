class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table "com_login_user", primary_key: "user_id", id: :string, limit: 30, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "delete_flg", limit: 1, default: 0, null: false
      t.integer "agree_flg", limit: 1, default: 0, null: false
      t.integer "audit_agree_flg", limit: 1, default: 0, null: false
      t.integer "cat_flg", limit: 1, default: 0, null: false
      t.integer "recieve_maintenance_mail", limit: 1, default: 0
      t.string "email_address", null: false
      t.datetime "email_address_update_dt"
      t.string "user_name"
      t.string "user_name_kana"
      t.string "password", limit: 50, null: false
      t.datetime "password_update_dt"
      t.string "qtax_id", limit: 30
      t.integer "qtax_fnc_account", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_payroll", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_payslips", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_bill", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_myno", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_writing", limit: 1, default: 0, null: false
      t.integer "qtax_fnc_audit", limit: 1, default: 0, null: false
      t.string "image_url", limit: 512
      t.datetime "create_dt"
      t.string "create_user_id", limit: 30
      t.datetime "update_dt"
      t.string "update_user_id", limit: 30
      t.index ["email_address"], name: "email_address", unique: true
      t.index ["email_address"], name: "email_address_2"
    end
  end
end
