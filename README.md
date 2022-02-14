# Amazon Clone

> This is a Ruby on Rails Project for Amazon Clone


### Project requirements:

* Ruby 3.0.3

* Ruby On Rails 7.0

* Sqlite3

* Mailhog (for Testing Emails localy)
___________
## Screenshots for Project
* Adding a new User
![](/github_images/ScreenShot.png)

* After Adding a User will recieve an E-mail
![](/github_images/ScreenShot1.png)

* Adding a new Item
![](/github_images/ScreenShot2.png)

* After Adding an item users will get notified by email message that new item added
![](/github_images/ScreenShot3.png)
______________________
## Side informations
> we used pluck method to select one or more attributes without loading the corresponding records just to filter out the selected attributes. It returns an Array of attribute values.
```
    def new_item_mail(users)
        @item = params[:item]
     
        mail(to: users.pluck(:email), subject: "New Item Added!")     
  
    end
```
_________
## References:
* https://guides.rubyonrails.org/action_mailer_basics.html
* https://dev.to/morinoko/sending-emails-in-rails-with-action-mailer-and-gmail-35g4
* https://mnaser.notion.site/Code-Snippets-6ee287636e94496799d45a04d94f7cac