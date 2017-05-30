class PagesController < ApplicationController
  def home
    @feedbacks = Feedback.all
    spot_id = params[:spot].to_i || 0
    @spot = spot_id
    spot_value_array = ['운전하거나 대중교통 이용시','은행 대출, 부동산 계약과 같은 신용관련 업무 안에서','가족관계에서','일에서','학교(유치원, 초중고 대학교 등)에서','커뮤니티(동창회, 취미모임 등) 안에서','친밀한 관계(애인, 친구 등) 안에서','대중매체에서','기타']
    if spot_id != 0
      @spot = spot_value_array[spot_id-1]
    end
  end
end
