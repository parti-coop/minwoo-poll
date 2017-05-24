class PagesController < ApplicationController
  def home
    @feedbacks = Feedback.all
    spot_id = params[:spot].to_i || 0
    @spot = spot_id
    spot_value_array = ['운전하거나 대중교통 이용시','은행 대출, 부동산 계약과 같은 신용관련 업무 안에서','가족관계에서','직장에서','학교에서','커뮤니티 안에서','친밀한 관계 안에서','대중매체에서','기타']
    if spot_id != 0
      @spot = spot_value_array[spot_id-1]
    end
  end
end
