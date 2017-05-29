class CopyFeedbackJob
  include Sidekiq::Worker

  def perform
    # read feedback from google sheet
    #session = GoogleDrive::Session.from_service_account_key("config/google-drive.json")
    configPath = Rails.root.join('config','google-drive.json')
    session = GoogleDrive::Session.from_service_account_key(configPath)
    ws  = session.spreadsheet_by_key("1Tl0tZfDRYNsfyyMZtRZmb8HgbjaZ4z81Du3jWFj0zVA").worksheets[0]

    start_feedback_row = 1
    last_row = (Feedback.order(:row).last.try(:row) || start_feedback_row) + 1

    (last_row..ws.num_rows).each do |row|
      feedback = Feedback.new
      feedback.row = row
      feedback.created_at = ws[row,1]
      feedback.age = ws[row,2]
      feedback.region = ws[row,3]
      feedback.case1 = ws[row,7]
      feedback.case1_spot = ws[row,8]
      feedback.case2 = ws[row,9]
      feedback.case2_spot = ws[row,10]
      feedback.case3 = ws[row,11]
      feedback.case3_spot = ws[row,12]
      feedback.case4 = ws[row,13]
      feedback.case4_spot = ws[row,14]
      feedback.case5 = ws[row,15]
      feedback.case5_spot = ws[row,16]

      puts feedback.inspect

      # save feedback to our repository
      feedback.save
    end

    puts "work hard!"
  end
end
