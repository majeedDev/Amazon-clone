# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    # def new_item_mail
    #     @item = Item.new(name: 'Test item', price: 55)
        
    #     ItemMailer.with(item: @item).new_item_mail.deliver_now

    # end
    def welcome_email
        
        user = User.new(name: 'Majeed ', email: 'Majeed@example.com')
    
        UserMailer.with(user: user).welcome_email

        
    end
end
