# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview

    def new_item_mail
        item = Item.new(name: 'item #Number', price: 30.5)
        users = User.all
        ItemMailer.with(item: item).new_item_mail(users)

end
