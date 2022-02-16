class AddMailToMailChampListJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    p "add mail to champ job started"
    p "#{user.email} Added successfully"
  end
end
