class AddMailToMailChampListJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    p "add mail to champ job started"
    p "#{user.email} Added successfully"
    UserMailer.with(user: @user).welcome_email(user.id).deliver_now
    # ItemMailer.with(item: @item).new_item_mail(item.id).deliver_now
  end
end
