class UniqueRowOfFeedbacks < ActiveRecord::Migration[5.1]
  def change
    remove_index :feedbacks, :row
    Feedback.destroy_all
    add_index :feedbacks, :row, unique: true
  end
end
