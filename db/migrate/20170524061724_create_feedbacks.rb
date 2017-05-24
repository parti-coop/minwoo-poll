class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC"  do |t|
      t.date :feedbacked_at
      t.integer :row, null: false, index: true
      t.string :age
      t.string :region
      t.string :case1
      t.string :case1_spot
      t.string :case2
      t.string :case2_spot
      t.string :case3
      t.string :case3_spot
      t.string :case4
      t.string :case4_spot
      t.string :case5
      t.string :case5_spot
      t.timestamps null: false
    end
  end
end
