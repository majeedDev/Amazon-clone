class SendSummaryUsersItemsJob < ApplicationJob
  queue_as :default
 
  def perform()
    # Do something later
    items = Item.where(:created_at >= :start_date, {start_date: Date.today})
    users = User.where(:created_at >= :start_date, {start_date: Date.today})
    SummaryMailer.with(items: @items, users: @users).summary_mail.deliver_now
    
  end
end
