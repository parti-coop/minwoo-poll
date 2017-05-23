class Feedback < ApplicationRecord
  #attr_accessor :created_at, :age, :region, :case1, :case1_spot, :case2, :case2_spot, :case3, :case3_spot, :case4, :case4_spot, :case5, :case5_spot

  def all_cases
    [case1, case2, case3, case4, case5].reject { |c| c.blank? }
  end
end
