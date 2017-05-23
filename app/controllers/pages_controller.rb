class PagesController < ApplicationController
  def home
    session = GoogleDrive::Session.from_service_account_key("config/google_drive.json")
    ws = session.spreadsheet_by_key("1Tl0tZfDRYNsfyyMZtRZmb8HgbjaZ4z81Du3jWFj0zVA").worksheets[0]

    @feedback = Feedback.new
    @feedback.created_at = ws[2,1]
    @feedback.age = ws[2,2]
    @feedback.region = ws[2,3]
    @feedback.case1 = ws[2,7]
    @feedback.case1_spot = ws[2,8]
    @feedback.case2 = ws[2,9]
    @feedback.case2_spot = ws[2,10]
    @feedback.case3 = ws[2,11]
    @feedback.case3_spot = ws[2,12]
    @feedback.case4 = ws[2,13]
    @feedback.case4_spot = ws[2,14]
    @feedback.case5 = ws[2,15]
    @feedback.case5_spot = ws[2,16]

  end
end
