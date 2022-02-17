class SummaryMailer < ApplicationMailer
    def summary_mail
        @users = params[:user]
        @items = params[:item]
         mail(to: "Ajrsh1814@gmail.com", subject: "This is a summary of new items and users") 
    end
end
