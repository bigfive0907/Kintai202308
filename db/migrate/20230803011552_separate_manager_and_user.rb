class SeparateManagerAndUser < ActiveRecord::Migration[7.0]
  def up
    drop_table :managers if table_exists?(:managers)
    rename_table :users, :managers
    # 別のテーブル名を指定してUserテーブルを新規作成
    create_table :users do |t|
      t.string "name"
      t.string "email"
      t.string "tell"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end

  def down
    # 元に戻す際にも再度テーブル名を変更する
    rename_table :managers, :users
    drop_table :users
  end
end
