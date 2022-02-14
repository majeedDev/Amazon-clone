class ItemMailer < ApplicationMailer

    def new_item_mail(users)
        @item = params[:item]
        #Adding some explainations
        mail(to: users.pluck(:email), subject: "New Item Added!")
    end

end
