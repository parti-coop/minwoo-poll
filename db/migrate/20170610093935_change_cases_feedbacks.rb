class ChangeCasesFeedbacks < ActiveRecord::Migration[5.1]
  def change
    change_column :feedbacks, :case1, :text
    change_column :feedbacks, :case2, :text
    change_column :feedbacks, :case3, :text
    change_column :feedbacks, :case4, :text
    change_column :feedbacks, :case5, :text
  end
end
